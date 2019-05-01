import datetime
from django.shortcuts import render, redirect
from django.contrib import messages
from django.db.models import Count, Q
from django.utils import timezone
from django.contrib.auth import authenticate, login, logout
from .forms import fRoles, fPermisos, fUsuarios
from apps.solicitudes.models import Solicitudes, Zonas
from apps.solicitudes.forms import fSolicitudes, fImagenes, fMateriales
from .models import User

def vLogout(request):
    logout(request)
    return redirect('usuarios:login')

def vLogin(request):
    vLogout(request)
    if request.method == 'POST':
        usuario = request.POST.get('user')
        contrasena = request.POST.get('pass')
        autenticado = authenticate(request, username = usuario, password = contrasena)
        if autenticado:
            login(request, autenticado)
            if request.user.rol.codename == 'admin':
                return redirect('usuarios:pAdmin')
            else:
                return redirect('usuarios:pCH')
            messages.success(request, 'Bienvenido')
        else:
            messages.error(request, 'Usuario o contraseña inválidas. Intente de nuevo')
            return redirect ('usuarios:login')
    return render(request, 'usuarios/login.html')

def vPrincipalAdmin(request):
    arr_month = ['ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE']
    fsolicitudes = fSolicitudes()
    imagenes = fImagenes()
    materiales = fMateriales()
    today = datetime.datetime.now()
    mesActual = 0
    mesActualNumber = 0
    if request.method == 'POST':
        mes = request.POST.get('mesReferencia')
        solicitudes = Solicitudes.objects.filter(fecha__month = int(mes), fecha__year = today.year).order_by('id')
        zonas = Zonas.objects.annotate(total_soli = Count('soli_zona', filter=Q(soli_zona__fecha__month = int(mes), soli_zona__fecha__year = today.year)))
        mesActual = int(mes)-1
        mesActualNumber = int(mes)
    else: 
        solicitudes = Solicitudes.objects.filter(fecha__month = today.month, fecha__year = today.year).order_by('id')
        zonas = Zonas.objects.annotate(total_soli = Count('soli_zona', filter=Q(soli_zona__fecha__month = today.month, soli_zona__fecha__year = today.year)))
        mesActual = today.month-1
        mesActualNumber = today.month
    context = {
        'solicitudes' : solicitudes, 
        'zonas' : zonas, 
        'rSolicitudes' : fsolicitudes, 
        'rImagenes' : imagenes, 
        'rMateriales' : materiales,
        'mesActual' : arr_month[mesActual],
        'mesActualNumber' : mesActualNumber,
        'anioActual' : today.year
    }
    return render(request, 'usuarios/admin/principalAdmin.html', context)

def vPrincipalCH(request):
    arr_month = ['ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE']
    mesActual = 0
    mesActualNumber = 0
    today = datetime.datetime.now()
    total_count = 0
    if request.method == 'POST':
        mes = request.POST.get('mesReferencia')
        zonas = request.user.zonas.annotate(total_soli = Count('soli_zona', filter=Q(soli_zona__fecha__month = int(mes), soli_zona__fecha__year = today.year)))
        for zona in zonas:
            total_count += zona.total_soli
        solicitudes = []
        for z in zonas:
            for s in z.soli_zona.filter(fecha__month = int(mes), fecha__year = today.year):
                solicitudes.append(s)
        mesActual = int(mes)-1
        mesActualNumber = int(mes)
    else:
        zonas = request.user.zonas.annotate(total_soli = Count('soli_zona', filter=Q(soli_zona__fecha__month = today.month, soli_zona__fecha__year = today.year)))
        for zona in zonas:
            total_count += zona.total_soli
        solicitudes = []
        for z in zonas:
            for s in z.soli_zona.filter(fecha__month = today.month, fecha__year = today.year):
                solicitudes.append(s)
        mesActual = today.month-1
        mesActualNumber = today.month
    context = {
        'mesActual' : arr_month[mesActual],
        'anioActual' : today.year,
        'mesActualNumber' : mesActualNumber,
        'zonas' : zonas,
        'solicitudes' : solicitudes,
        'total_soli' : total_count
        }
    return render(request, 'usuarios/ch/principalCH.html', context)

def vRoles(request):
    if request.method == 'POST':
        roles = fRoles(request.POST)
        if roles.is_valid():
            print('es valido weee')
            roles.save()
            return redirect('usuarios:formularios')
    else:
        roles = fRoles()
    context = {'fRoles' : roles}
    return render(request, 'usuarios/registroUsu.html', context)

def vPermisos(request):
    if request.method == 'POST':
        permiso = fPermisos(request.POST)
        print(permiso)
        if permiso.is_valid():
            permiso.save()
            return redirect('usuarios:formularios')
    else:
        permiso = fPermisos()
    context = {'fPermisos' : permiso}
    return render(request, 'usuarios/registroUsu.html', context)

def vRegistroUsuarios(request):
    if request.method == 'POST':
        usuario = fUsuarios(request.POST)
        if usuario.is_valid():
            if request.POST.__contains__('rol'):
                user = usuario.save(commit = False)
                user.set_password(user.password)
                user.save()
                usuario.save_m2m()
            else:
                print('you need to choice a group')
    else:
        usuario = fUsuarios()
    context = {'fUsuarios' : usuario}
    return render(request, 'usuarios/admin/registroUsuarios.html', context)
        
def vTestAdmin(request):
    return render(request, 'base/admin.html')

def testAjax(request):
    print('entra')
    responseVar = JsonResponse({
        'status': 'ok',
        'code': 200,
        'msg': 'Hola mundo desde ajax Django'
    })
    return responseVar

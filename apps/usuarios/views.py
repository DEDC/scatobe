import os
import io
import zipfile
from django.conf import settings
from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from .forms import fGrupos, fPermisos, fUsuarios
from django.http import JsonResponse, HttpResponse
from .test import testPdf

def vLogin(request):
    if request.method == 'POST':
        usuario = request.POST.get('user')
        contrasena = request.POST.get('pass')
        autenticado = authenticate(request, username = usuario, password = contrasena)
        if autenticado:
            login(request, autenticado)
            if request.user.groups.filter(name = 'Administrador').exists():
                return redirect('usuarios:pAdmin')
            else:
                return redirect('usuarios:pCH')
            messages.success(request, 'Bienvenido')
        else:
            messages.error(request, 'Usuario o contraseña inválidas. Intente de nuevo')
            return redirect ('usuarios:login')
    return render(request, 'usuarios/login.html')

def vPrincipalAdmin(request):
    return render(request, 'usuarios/admin/principalAdmin.html')

def vPrincipalCH(request):
    return render(request, 'usuarios/ch/principalCH.html')

def vGrupos(request):
    if request.method == 'POST':
        grupos = fGrupos(request.POST)
        print(grupos)
        if grupos.is_valid():
            grupos.save()
    else:
        grupos = fGrupos()
    context = {'fGrupos' : grupos}
    return render(request, 'usuarios/registroUsu.html', context)

def vPermisos(request):
    if request.method == 'POST':
        permiso = fPermisos(request.POST)
        print(permiso)
        if permiso.is_valid():
            permiso.save()
    else:
        permiso = fPermisos()
    context = {'fPermisos' : permiso}
    return render(request, 'usuarios/registroUsu.html', context)

def vRegistroUsuarios(request):
    if request.method == 'POST':
        usuario = fUsuarios(request.POST)
        if usuario.is_valid():
            if request.POST.__contains__('groups'):
                usuario.save()
            else:
                print('you need to choice a group')
    else:
        usuario = fUsuarios()
    context = {'fUsuarios' : usuario}
    return render(request, 'usuarios/admin/registroUsuarios.html', context)
        
def vTestAdmin(request):
    return render(request, 'base/admin.html')

def testAjax(request):
    checkboxList = request.POST.getlist('checkbox')
    print(checkboxList)
    return testPdf(checkboxList)

def testDownload(request):
    #  Archivo donde se encuentra el zip (por ahora es estatico)
    #  Archivos que se meteran al zip (es un list de paths)
    # file2 = os.path.join('/storage/zip/prueba/test1.txt')
    # print(file2)
    # file1 = os.path.join('/storage/zip/prueba/test2.txt')
    # files = [file1, file2]
    # return makeZip(files)
    if request.method == 'GET':
        return testPdf()


def makeZip(files):

    # En caso de querer meterlo en una subcarpeta los archivos
    # Por el momento, solo crea el nombre del zip
    zip_name = 'MiSubcarpeta'
    zip_filename = "%s.zip" % zip_name
    # String IO para guardar en memoria el zip 
    s = io.BytesIO()
    # El compresor
    zf = zipfile.ZipFile(s,"w")
    for fpath in files:
        path2 = settings.MEDIA_ROOT + fpath
        fdir, fname = os.path.split(path2)
        print(fdir, fname)
        zip_path = os.path.join(zip_name, fname)
        zf.write(path2, zip_path)
    zf.close()
     # Tomamos el zip de la memoria y realizamos el response
    resp = HttpResponse(s.getvalue(), content_type="application/application/octet-stream")
    # ..and correct content-disposition
    resp['Content-Disposition'] = 'attachment; filename=%s' % zip_filename
    return resp

def makeResponseZip(path):
    file_path = os.path.join(settings.BASE_DIR + path)
    if os.path.exists(file_path):
        # return HttpResponse(os.path)
        with open(file_path, 'rb') as fh:
            response = HttpResponse(fh.read(), content_type="application/application/octet-stream")
            response['Content-Disposition'] = 'inline; filename=' + os.path.basename(file_path)
            return response
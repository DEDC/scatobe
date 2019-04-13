from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from .forms import fGrupos, fPermisos, fUsuarios

def vLogin(request):
    if request.method == 'POST':
        usuario = request.POST.get('user')
        contrasena = request.POST.get('pass')
        autenticado = authenticate(request, username = usuario, password = contrasena)
        if autenticado:
            login(request, autenticado)
            messages.success(request, 'Bienvenido')
            return redirect('usuarios:registroUsuarios')
        else:
            messages.error(request, 'Usuario o contraseña inválidas. Intente de nuevo')
            return redirect ('usuarios:login')
    return render(request, 'usuarios/login.html')

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

def vUsuarios(request):
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
        

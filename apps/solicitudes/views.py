from django.shortcuts import render, get_object_or_404
from .forms import fZonas, fGerentes, fCategorias, fTipos, fFanPages, fImagenes, fSolicitudes
from .models import Zonas, Imagenes
    
def vTabla(request):
    return render(request, 'solicitudes/tabla.html')

# CRUD Zonas
def vRegistroZonas(request):
    if request.method == 'POST':
        zona = fZonas(request.POST)
        if zona.is_valid():
            zona.save()
            print('zona agregada')
        else:
            print('zona no agregada')
    else:
        zona = fZonas()
    context = {'rZonas' : zona}
    return render(request, 'solicitudes/tabla.html', context)

def vEditarZonas(request, id):
    zona = get_object_or_404(Zonas, pk = id)
    if request.method == 'POST':
        fzona = fZonas(request.POST, instance = zona)
        if fzona.is_valid():
            fzona.save()
            print('zona editada')
        else:
            print('zona no editada')
    else:
        fzona = fZonas(instance = zona)
    context = {'edZonas' : fzona}
    return render(request, 'solicitudes/tabla.html', context)

def vEliminarZona(request, id):
    zona = get_object_or_404(Zonas, pk = id)
    if request.method == 'POST':
        zona.delete()
    return render(request, 'solicitudes/tabla.html')

# CRUD Gerentes
def vRegistroGerentes(request):
    if request.method == 'POST':
        gerente = fGerentes(request.POST)
        if gerente.is_valid():
            gerente.save()
            print('gerente agregado')
        else:
            print('gerente no agregado')
    else:
        gerente = fGerentes()
    context = {'rGerentes' : gerente}
    return render(request, 'solicitudes/tabla.html', context)

def vRegistroCategorias(request):
    if request.method == 'POST':
        categoria = fCategorias(request.POST)
        if categoria.is_valid():
            categoria.save()
            print('categoria agregada')
        else:
            print('categoria no agregada')
    else:
        categoria = fCategorias()
    context = {'rCategoria' : categoria}
    return render(request, 'solicitudes/tabla.html', context)

def vRegistroTipos(request):
    if request.method == 'POST':
        tipo = fTipos(request.POST)
        if tipo.is_valid():
            tipo.save()
            print('tipo agregado')
        else:
            print('tipo no agregado')
    else:
        tipo = fTipos()
    context = {'rTipos' : tipo}
    return render(request, 'solicitudes/tabla.html', context)

def vRegistroFanPages(request):
    if request.method == 'POST':
        fanPage = fFanPages(request.POST)
        if fanPage.is_valid():
            fanPage.save()
            print('fanpage agregada')
        else:
            print('fanpage no agregada')
    else:
        fanPage = fFanPages()
    context = {'rFanPage' : fanPage}
    return render(request, 'solicitudes/tabla.html', context)

def vRegistroSolicitudes(request):
    if request.method == 'POST':
        imagen = fImagenes(request.POST, request.FILES)
        solicitud = fSolicitudes(request.POST)
        if solicitud.is_valid() and imagen.is_valid():
            solicitud.save()
            for img in request.FILES.getlist('imagen'):
                Imagenes.objects.create(imagen = img, nombre = img.name, solicitud = solicitud.save())
            print('solicitud agregada')
        else:
            print('solicitud no agregada')
    else:
        solicitud = fSolicitudes()
        imagen = fImagenes()
    context = {'rSolicitudes' : solicitud, 'rImagenes' : imagen}
    return render(request, 'solicitudes/tabla.html', context)
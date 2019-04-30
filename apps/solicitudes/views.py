import os
from django.core import serializers
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, get_object_or_404, redirect
from .forms import fZonas, fCategorias, fTipos, fFanPages, fGerentes, fImagenes, fFacturas, fMateriales, fSolicitudes
from .models import Zonas, Categorias, Tipos, FanPages, Solicitudes, Gerentes, Imagenes, Materiales, Facturas
from apps.usuarios.forms import fUsuarios, fRoles, fPermisos

def vTabla(request):
    solicitudes = Solicitudes.objects.all()
    context = {'solicitudes' : solicitudes}
    return render(request, 'solicitudes/tabla.html', context)

def vFormularios(request):
    model_facturas = Facturas.objects.all()
    zonas = fZonas()
    categorias = fCategorias()
    tipos = fTipos()
    gerentes = fGerentes()
    fanpages = fFanPages()
    solicitudes = fSolicitudes()
    imagenes = fImagenes()
    facturas = fFacturas()
    usuarios = fUsuarios()
    roles = fRoles()
    permisos = fPermisos()
    materiales = fMateriales()
    context = {
        'rZonas' : zonas, 
        'rCategorias' : fCategorias, 
        'rTipos' : tipos, 
        'rGerentes' : gerentes, 
        'rFanPages' : fanpages, 
        'rSolicitudes' : solicitudes, 
        'rImagenes': imagenes, 
        'rFacturas' : facturas, 
        'rMateriales' : materiales,
        'rUsuarios' : usuarios, 
        'rRoles' : roles, 
        'rPermisos' : permisos,
        'facturas' : model_facturas
        }
    return render(request, 'usuarios/admin/formularios.html', context)

#--- CRUD Facturas
def vRegistroFacturas(request):
    if request.method == 'POST':
        factura = fFacturas(request.POST, request.FILES)
        if factura.is_valid():
            f =  factura.save(commit = False)
            f.mes = request.POST.get('factura_mes')
            f.anio = request.POST.get('factura_anio')
            f.nombre = f.factura.name 
            f.save()
            print('Factura agregada')
            return redirect('usuarios:formularios')
        else:
            print('Factura no agregada')
            return redirect('usuarios:formularios')
    else:
        return redirect('usuarios:formularios')

def vEliminarFacturas(request, id):
    factura = get_object_or_404(Facturas, pk = id)
    eliminarArchivo(factura.factura.path)
    factura.delete()
    print('Factura eliminada')
    return redirect('usuarios:formularios')

#--- CRUD Zonas
def vRegistroZonas(request):
    if request.method == 'POST':
        zona = fZonas(request.POST)
        if zona.is_valid():
            zona.save()
            print('zona agregada')
            return redirect('usuarios:formularios')
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

def vEliminarZonas(request, id):
    zona = get_object_or_404(Zonas, pk = id)
    if request.method == 'POST':
        zona.delete()
    return render(request, 'solicitudes/tabla.html')

def vObtenerZona(id):
    zona = get_object_or_404(Zonas, pk = id)
    return zona

def vObtenerZonas(request):
    if request.is_ajax():
        id = request.POST.get('id_fp')
        zonas = serializers.serialize('json', Zonas.objects.filter(fan_zonas__exact = id))
        return HttpResponse(zonas, content_type = 'application/json')
    else:
        print('salió mal')

#--- CRUD Categorías
def vRegistroCategorias(request):
    if request.method == 'POST':
        categoria = fCategorias(request.POST)
        if categoria.is_valid():
            categoria.save()
            return redirect('usuarios:formularios')
            print('categoria agregada')
        else:
            print('categoria no agregada')
    else:
        categoria = fCategorias()
    context = {'rCategorias' : categoria}
    return render(request, 'solicitudes/tabla.html', context)

def vEditarCategorias(request, id):
    categoria = get_object_or_404(Categorias, pk = id)
    if request.method == 'POST':
        fcategoria = fCategorias(request.POST, instance = categoria)
        if fcategoria.is_valid():
            fcategoria.save()
            print('categoria editada')
        else:
            print('categoria no editada')
    else:
        fcategoria = fCategorias(instance = categoria)
    context = {'edCategorias' : fcategoria}
    return render(request, 'solicitudes/tabla.html', context)

def vEliminarCategorias(request, id):
    categoria = get_object_or_404(Categorias, pk = id)
    if request.method == 'POST':
        categoria.delete()
    return render(request, 'solicitudes/tabla.html')

def vObtenerCategoria(id):
    categoria = get_object_or_404(Categorias, pk = id)
    return categoria

def vObtenerCategorias():
    categorias = Categorias.objects.all()
    return categorias

#--- CRUD Tipos
def vRegistroTipos(request):
    if request.method == 'POST':
        tipo = fTipos(request.POST)
        if tipo.is_valid():
            tipo.save()
            return redirect('usuarios:formularios')
            print('tipo agregado')
        else:
            print('tipo no agregado')
    else:
        tipo = fTipos()
    context = {'rTipos' : tipo}
    return render(request, 'solicitudes/tabla.html', context)

def vEditarTipos(request, id):
    tipo = get_object_or_404(Tipos, pk = id)
    if request.method == 'POST':
        ftipo = fTipos(request.POST, instance = tipo)
        if ftipo.is_valid():
            ftipo.save()
            print('tipo editado')
        else:
            print('tipo no editada')
    else:
        ftipo = fTipos(instance = tipo)
    context = {'edTipos' : ftipo}
    return render(request, 'solicitudes/tabla.html', context)

def vEliminarTipos(request, id):
    tipo = get_object_or_404(Tipos, pk = id)
    if request.method == 'POST':
        tipo.delete()
    return render(request, 'solicitudes/tabla.html')

def vObtenerTipo(id):
    tipo = get_object_or_404(Tipos, pk = id)
    return tipo

def vObtenerTipos(request):
    if request.is_ajax():
        tipos = serializers.serialize('json', Tipos.objects.all())
        return HttpResponse(tipos, content_type = 'application/json')
    else:
        print('salió mal')

#--- CRUD FanPages
def vRegistroFanPages(request):
    if request.method == 'POST':
        fanPage = fFanPages(request.POST)
        if fanPage.is_valid():
            fanPage.save()
            return redirect('usuarios:formularios')
            print('fanpage agregada')
        else:
            print('fanpage no agregada')
    else:
        fanPage = fFanPages()
    context = {'rFanPages' : fanPage}
    return render(request, 'solicitudes/tabla.html', context)

def vEditarFanPages(request, id):
    fanPage = get_object_or_404(FanPages, pk = id)
    if request.method == 'POST':
        ffanpage = fFanPages(request.POST, instance = fanPage)
        if ffanpage.is_valid():
            ffanpage.save()
            print('fanpage editada')
        else:
            print('fanpage no editada')
    else:
        ffanpage = fFanPages(instance = fanPage)
    context = {'edFanPages' : ffanpage}
    return render(request, 'solicitudes/tabla.html', context)

def vEliminarFanPages(request, id):
    fanpage = get_object_or_404(FanPages, pk = id)
    if request.method == 'POST':
        fanpage.delete()
    return render(request, 'solicitudes/tabla.html')

def vObtenerFanPage(id):
    fanpage = get_object_or_404(FanPages, pk = id)
    return fanpage

def vObtenerFanPages():
    fanpages = FanPages.objects.all()
    return fanpages

def vObtenerFanPagesByFK(request):
    if request.is_ajax():
        id = request.POST.get('id_zona')
        if id == '*':
            fanpages = serializers.serialize('json', FanPages.objects.all())
        else:
            fanpages = serializers.serialize('json', FanPages.objects.filter(zonas__exact = id))
        return HttpResponse(fanpages, content_type = 'application/json')
    else:
        print('salió mal')

#--- CRUD Gerentes
def vRegistroGerentes(request):
    if request.method == 'POST':
        gerente = fGerentes(request.POST)
        if gerente.is_valid():
            gerente.save()
            return redirect('usuarios:formularios')
    else:
        gerente = fGerentes()
    context = {'fGerentes' : gerente}
    return render(request, 'solicitudes/registroSolicitud.html', context)

def vEditarGerentes(request, id):
    gerente = get_object_or_404(Gerentes, pk = id)
    if request.method == 'POST':
        fgerente = fGerentes(request.POST, instance = gerente)
        if fgerente.is_valid():
            fgerente.save()
    else:
        fgerente = fGerentes(instance = gerente)
    context = {'edGerentes' : fgerente}
    return render(request, 'solicitudes/sdfds.html', context)
    
def vEliminarGerentes(request, id):
    gerente = get_object_or_404(Gerentes, pk = id)
    if request.method == 'POST':
        gerente.delete()
    return render(request, 'solicitudes/tabla.html')

def vObtenerGerente(id):
    gerente  = get_object_or_404(Gerentes, pk = id)
    return gerente

def vObtenerGerentes():
    gerentes = Gerentes.objects.all()
    return gerentes

def vObtenerGerentesByFK(request):
    if request.is_ajax():
        id = request.POST.get('id_zona')
        gerentes = serializers.serialize('json', Gerentes.objects.filter(zona__exact = id))
        return HttpResponse(gerentes, content_type = 'application/json')
    else:
        print('salió mal')

#--- CRUD Solicitudes
def vRegistroSolicitudes(request):
    if request.method == 'POST':
        imagen = fImagenes(request.POST, request.FILES)
        material = fMateriales(request.POST, request.FILES)
        solicitud = fSolicitudes(request.POST)
        if solicitud.is_valid() and imagen.is_valid() and material.is_valid() :
            solicitud.save()
            for img in request.FILES.getlist('imagen'):
                Imagenes.objects.create(imagen = img, nombre = img.name, solicitud = solicitud.save())
            for material in request.FILES.getlist('material'):
                Materiales.objects.create(material = material, nombre = material.name, solicitud = solicitud.save())
            print('solicitud agregada')
            return redirect('usuarios:pAdmin')
        else:
            print('solicitud no agregada')
    else:
        solicitud = fSolicitudes()
        imagen = fImagenes()
    context = {'rSolicitudes' : solicitud, 'rImagenes' : imagen}
    return render(request, 'solicitudes/registroSolicitud.html', context)

def vEditarSolicitudes(request, id):
    solicitud = get_object_or_404(Solicitudes, pk = id)
    if request.method == 'POST':
        fsolicitud = fSolicitudes(request.POST, instance = solicitud)
        if fsolicitud.is_valid():
            fsolicitud.save()
            print('solicitud editada')
        else:
            print('solicitud no editada')
    else:
        fsolicitud = fSolicitudes(instance = solicitud)
    context = {'edSolicitudes' : fsolicitud, 'solicitud' : solicitud}
    return render(request, 'usuarios/admin/editarSolicitudes.html', context)

def vEliminarSolicitudes(request, id):
    solicitud = get_object_or_404(Solicitudes, pk = id)
    if request.method == 'POST':
        solicitud.delete()
    return redirect('usuarios:pAdmin')

def vObtenerSolicitud(request):
    if request.is_ajax:
        id_soli = request.POST.get('id_soli')
        solicitud = get_object_or_404(Solicitudes, pk = id_soli)
        infoSoli = {
            'fecha' : solicitud.fecha,
            'folio' : solicitud.folio,
            'categoriaId' : solicitud.categoria.id,
            'zonaGerenteId' : solicitud.gerente.zona.id,
            'gerenteId' : solicitud.gerente.id,
            'tipoId' : solicitud.tipo.id
        }
        return JsonResponse(infoSoli, safe=False)

#--- CRUD Imágenes
def vRegistrarImagenes(request):
    if request.method == 'POST':
        id_solicitud = request.POST.get('solicitud')
        solicitud = get_object_or_404(Solicitudes, pk = id_solicitud)
        imagenes = request.FILES.getlist('nvoImagen')
        for imagen in imagenes:
            Imagenes.objects.create(imagen = imagen, nombre = imagen.name, solicitud = solicitud)
        return redirect('usuarios:edSolicitudes', id = id_solicitud)
    else:
        return redirect('usuarios:pAdmin')

def vEliminarImagenes(request, id_solicitud, id_imagen):
    imagen = get_object_or_404(Imagenes, pk = id_imagen)
    imagen.delete()
    return redirect('usuarios:edSolicitudes', id = id_solicitud)

#--- CRUD Materiales
def vRegistrarMateriales(request):
    if request.method == 'POST':
        id_solicitud = request.POST.get('solicitud')
        solicitud = get_object_or_404(Solicitudes, pk = id_solicitud)
        materiales = request.FILES.getlist('nvoMaterial')
        for material in materiales:
            Materiales.objects.create(material = material, nombre = material.name, solicitud = solicitud)
            print('material agregado')
        return redirect('usuarios:edSolicitudes', id = id_solicitud)
    else:
        return redirect('usuarios:pAdmin')

def vEliminarMateriales(request, id_solicitud, id_material):
    material = get_object_or_404(Materiales, pk = id_material)
    material.delete()
    return redirect('usuarios:edSolicitudes', id = id_solicitud)

def pruebaReturnHTML(request):
    if request.is_ajax():
        id = request.POST.get('id_soli')
        solicitud = get_object_or_404(Solicitudes, pk = id)
        fsolicitud = fSolicitudes(instance = solicitud)
        context = {'edSolicitudes' : fsolicitud, 'solicitud' : solicitud}
        response = render(request, 'usuarios/admin/editarSolicitudes.html', context)
        return HttpResponse(response)

#--- Extras
def eliminarArchivo(path):
    if os.path.isfile(path):
        os.remove(path)

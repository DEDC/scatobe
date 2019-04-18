import os
import io
import zipfile
from django.conf import settings
from django.shortcuts import get_list_or_404
from django.http import HttpResponse
from .models import Materiales, Facturas

def descargar_multimedia(request, id):
    materiales = Materiales.objects.filter(solicitud = id)
    if materiales.count() > 0:
        return makeZip(materiales)
    else:
       return HttpResponse('Lo sentimos. Esta solicitud no contiene multimedia.')     

def descargar_factura(request):
    mes = request.POST.get('f_mes')
    anio = request.POST.get('f_anio')
    facturas = Facturas.objects.filter(mes = mes, anio = anio)
    if facturas.count() > 0:
        return makeZipFactura(facturas) 
    else:
        return HttpResponse('Lo sentimos. No encontramos el archivo factura.')

def makeZip(files):
    # En caso de querer meterlo en una subcarpeta los archivos
    # Por el momento, solo crea el nombre del zip
    zip_name = 'Evidencias'
    zip_filename = "%s.zip" % zip_name
    # String IO para guardar en memoria el zip 
    s = io.BytesIO()
    # El compresor
    zf = zipfile.ZipFile(s,"w")
    for fpath in files:
        path2 = fpath.material.path
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

def makeZipFactura(files):
    # En caso de querer meterlo en una subcarpeta los archivos
    # Por el momento, solo crea el nombre del zip
    zip_name = 'Factura'
    zip_filename = "%s.zip" % zip_name
    # String IO para guardar en memoria el zip 
    s = io.BytesIO()
    # El compresor
    zf = zipfile.ZipFile(s,"w")
    for fpath in files:
        path2 = fpath.factura.path
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

from django.urls import path
from .views import vLogin, vLogout, vRegistroUsuarios, vPrincipalAdmin, vPrincipalCH, vTestAdmin
from .views import vRoles, vPermisos
from apps.solicitudes.descarga_archivos import descargar_multimedia, descargar_factura
from apps.solicitudes.descargar_reporte import descargar_pdf
from apps.solicitudes.views import (vRegistroZonas, vEditarZonas, vEliminarZonas,
                                    vRegistroCategorias, vEditarCategorias, vEliminarCategorias,
                                    vRegistroTipos, vEditarTipos, vEliminarTipos,
                                    vRegistroGerentes, vEditarGerentes, vEliminarGerentes, vObtenerGerentesByFK,
                                    vRegistroFanPages, vEditarFanPages, vEliminarFanPages, vObtenerFanPagesByFK,
                                    vRegistroSolicitudes, vFormularios, vRegistroFacturas)
app_name = 'usuarios'

urlpatterns = [
    #--- Login y logout
    path('', vLogin, name = 'login'),
    path('', vLogout, name = 'logout'),
    path('testAdmin/', vTestAdmin, name = 'testAdmin'),
    path('admin/', vPrincipalAdmin, name = 'pAdmin'),
    path('home/', vPrincipalCH, name = 'pCH'),
    #--- Usuarios
    path('admin/usuarios/crear', vRegistroUsuarios, name = 'rUsuarios'),
    #--- Roles
    path('admin/roles/crear', vRoles, name = 'rRoles' ),
    # path('admin/roles/editar/<int:id>'),
    # path('admin/roles/eliminar/<int:id>'),
    #--- Permisos
    path('admin/permisos/crear', vPermisos, name = 'rPermisos'),
    # path('admin/roles/editar/<int:id>'),
    # path('admin/roles/eliminar/<int:id>'),
    #--- Formularios
    path('admin/registros/', vFormularios, name = 'formularios'),
    #--- Zonas
    path('admin/zonas/crear', vRegistroZonas, name = 'rZonas'),
    path('admin/zonas/editar/<int:id>', vEditarZonas, name = 'edZonas'),
    path('admin/zonas/eliminar/<int:id>', vEliminarZonas, name = 'eZonas'),
    #--- Categorías
    path('admin/categorias/crear', vRegistroCategorias, name = 'rCategorias'),
    path('admin/categorias/editar/<int:id>', vEditarCategorias, name = 'edCategorias'),
    path('admin/categorias/eliminar/<int:id>', vEliminarCategorias, name = 'eCategorias'),
    #--- Tipos
    path('admin/tipos/crear', vRegistroTipos, name = 'rTipos'),
    path('admin/tipos/editar/<int:id>', vEditarTipos, name = 'edTipos'),
    path('admin/tipos/eliminar/<int:id>', vEliminarTipos, name = 'eTipos'),
    #--- Gerentes
    path('admin/gerentes/crear', vRegistroGerentes, name = 'rGerentes'),
    path('admin/gerentes/editar/<int:id>', vEditarGerentes, name = 'edGerentes'),
    path('admin/gerentes/eliminar/<int:id>', vEliminarGerentes, name = 'eGerentes'),
    #--- FanPages
    path('admin/fanpages/crear', vRegistroFanPages, name = 'rFanPages'),
    path('admin/fanpages/editar/<int:id>', vEditarFanPages, name = 'edFanPages'),
    path('admin/fanpages/eliminar/<int:id>', vEliminarFanPages, name = 'eFanPages'),
    #--- Facturas
    path('admin/facturas/crear', vRegistroFacturas, name = 'rFacturas'),
    #--- Solicitudes
    path('admin/solicitudes/crear', vRegistroSolicitudes, name = 'rSolicitudes'),
    #---AJAX
    path('admin/ajax/fp', vObtenerFanPagesByFK),
    path('admin/ajax/gr', vObtenerGerentesByFK),
    #--- Descargas
    path('descarga/materiales/<int:id>', descargar_multimedia, name = 'descarga_multi'),
    path('descarga/factura/', descargar_factura, name = 'descarga_factura'),
    path('descarga/reporte/', descargar_pdf, name = 'descarga_pdf'),
]
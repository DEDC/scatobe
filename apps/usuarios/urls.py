from django.urls import path
from .views import vLogin, vRegistroUsuarios, vPrincipalAdmin, vPrincipalCH
from apps.solicitudes.views import (vRegistroZonas, vEditarZonas, vEliminarZonas,
                                    vRegistroCategorias, vEditarCategorias, vEliminarCategorias,
                                    vRegistroTipos, vEditarTipos, vEliminarTipos,
                                    vRegistroGerentes, vEditarGerentes, vEliminarGerentes,
                                    vRegistroFanPages, vEditarFanPages, vEliminarFanPages,
                                    vRegistroSolicitudes)
app_name = 'usuarios'

urlpatterns = [
    #--- Login
    path('', vLogin, name = 'login'),
    path('admin/', vPrincipalAdmin, name = 'pAdmin'),
    path('home/', vPrincipalCH, name = 'pCH'),
    #--- Usuarios
    path('admin/usuarios/crear', vRegistroUsuarios, name = 'rUsuarios'),
    #--- Roles
    # path('admin/roles/crear')
    # path('admin/roles/editar/<int:id>'),
    # path('admin/roles/eliminar/<int:id>'),
    #--- Permisos
    # path('admin/roles/crear'),
    # path('admin/roles/editar/<int:id>'),
    # path('admin/roles/eliminar/<int:id>'),
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
    #--- Solicitudes
    path('admin/solicitudes/crear', vRegistroSolicitudes, name = 'rSolicitudes'),
]
from django.urls import path
from .views import (vRegistroZonas, vEditarZonas, vEliminarZonas, vRegistroCategorias, 
                    vEditarCategorias, vEliminarCategorias, vRegistroTipos, vEditarTipos, vEliminarTipos, 
                    vRegistroFanPages, vEditarFanPages, vEliminarFanPages, vRegistroSolicitudes, vTabla)
from apps.usuarios.views import vRoles, vPermisos

app_name = 'solicitudes'

urlpatterns = [
    path('', vTabla, name = 'tabla'),

]
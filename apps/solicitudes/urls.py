from django.urls import path
from .views import vRegistroZonas, vEditarZonas, vEliminarZona, vRegistroGerentes, vRegistroCategorias, vRegistroTipos, vRegistroFanPages, vRegistroSolicitudes

app_name = 'solicitudes'

urlpatterns = [
    path('<int:id>', vEliminarZona, name = 'tabla')
]
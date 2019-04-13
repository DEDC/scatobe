from django.urls import path
from .views import vLogin, vUsuarios

app_name = 'usuarios'

urlpatterns = [
    path('', vLogin, name = 'login'),
    path('admin/nvo-usuario', vUsuarios, name = 'registroUsuarios'),
    path('home/', vUsuarios, name = 'home')
]
from django import forms
from .models import User, Permisos, Roles

class fRoles(forms.ModelForm):
    class Meta:
        model = Roles
        fields = '__all__'

class fPermisos(forms.ModelForm):
    class Meta:
        model = Permisos
        fields = '__all__'
    
class fUsuarios(forms.ModelForm):
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email', 'username', 'password', 'rol', 'zonas']


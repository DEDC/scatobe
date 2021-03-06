from django import forms
from .models import Categorias, FanPages, Imagenes, Facturas, Zonas, Solicitudes, Tipos, Gerentes, Materiales

class fSolicitudes(forms.ModelForm):
    class Meta:
        model = Solicitudes
        fields = '__all__'
        widgets = {
            'fecha': forms.TextInput(attrs={'type': 'date'}),
            'post': forms.TextInput(attrs={'type': 'date'}),
        }

class fZonas(forms.ModelForm):
    class Meta:
        model = Zonas
        fields = '__all__'

class fCategorias(forms.ModelForm):
    class Meta:
        model = Categorias
        fields = '__all__'

class fTipos(forms.ModelForm):
    class Meta:
        model = Tipos
        fields = '__all__'

class fFanPages(forms.ModelForm):
    class Meta:
        model = FanPages
        fields = '__all__'
    
class fGerentes(forms.ModelForm):
    class Meta:
        model = Gerentes
        fields = '__all__'

class fImagenes(forms.ModelForm):
    class Meta:
        model = Imagenes
        fields = ['imagen']
        widgets = {
            'imagen' : forms.FileInput(attrs={'multiple' : ''})
        }

class fFacturas(forms.ModelForm):
    class Meta:
        model = Facturas
        fields = ['factura']
        widgets = {
            'imagen' : forms.FileInput(attrs={'multiple' : ''}),
            'mes' : forms.FileInput(attrs={'type' : 'number'}),
            'anio' : forms.FileInput(attrs={'type' : 'number'})
        }

class fMateriales(forms.ModelForm):
    class Meta:
        model = Materiales
        fields = ['material']
        widgets = {
            'material' : forms.FileInput(attrs={'multiple' : ''})
        }
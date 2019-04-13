from django import forms
from django.contrib.auth.models import User, Group, Permission

class fGrupos(forms.ModelForm):
    class Meta:
        model = Group
        fields = '__all__'

class fPermisos(forms.ModelForm):
    class Meta:
        model = Permission
        fields = '__all__'
    
class fUsuarios(forms.ModelForm):
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email', 'username', 'password', 'groups']
        
    # def __init__(self, *args, **kwargs):
    #     super(fUsuarios, self).__init__(*args, **kwargs)
    #     self.fields["groups"].widget = forms.Select()
    #     self.fields["groups"].queryset = Group.objects.all()


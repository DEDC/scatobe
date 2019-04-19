from django.db import models
from django.contrib.auth.models import AbstractUser
from apps.solicitudes.models import Zonas

class Permisos(models.Model):
    nombre = models.CharField(max_length = 50)
    codename = models.CharField(max_length = 50)
    def __str__(self):
        return '%s' % (self.nombre)

class Roles(models.Model):
    nombre = models.CharField(max_length = 50)
    codename = models.CharField(max_length = 50)
    permisos = models.ManyToManyField(Permisos, related_name = 'permisos', blank = True)
    def __str__(self):
        return '%s' % (self.nombre)
        
class User(AbstractUser):
    rol = models.ForeignKey(Roles, on_delete = models.PROTECT, null = True)
    zonas = models.ManyToManyField(Zonas, related_name = 'zonas', blank = True)
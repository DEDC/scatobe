from django.db import models

class Zonas(models.Model):
    nombre = models.CharField(max_length = 50)
    def __str__(self):
        return '%s' % (self.nombre)

class Gerentes(models.Model):
    nombre = models.CharField(max_length = 50)
    def __str__(self):
        return '%s' % (self.nombre)

class Categorias(models.Model):
    nombre = models.CharField(max_length = 50)
    def __str__(self):
        return '%s' % (self.nombre)

class Tipos(models.Model):
    nombre = models.CharField(max_length = 50)
    def __str__(self):
        return '%s' % (self.nombre)

class FanPages(models.Model):
    nombre = models.CharField(max_length = 50)
    def __str__(self):
        return '%s' % (self.nombre)

class Solicitudes(models.Model):
    fecha = models.DateField()
    folio = models.CharField(max_length = 10)
    post = models.DateField()
    link = models.CharField(max_length = 200)
    zona = models.ForeignKey(Zonas, on_delete = models.PROTECT)
    gerente = models.ForeignKey(Gerentes, on_delete = models.PROTECT)
    categoria = models.ForeignKey(Categorias, on_delete = models.PROTECT)
    tipo = models.ForeignKey(Tipos, on_delete = models.PROTECT)
    fanPage = models.ForeignKey(FanPages, on_delete = models.PROTECT)

class Imagenes(models.Model):
    imagen = models.ImageField(upload_to = 'screens/')
    nombre = models.CharField(max_length = 50, blank = True, null = True)
    solicitud = models.ForeignKey(Solicitudes, on_delete = models.CASCADE, blank = True, null = True)
from pickle import FALSE
from django.db import models
from django.contrib.auth.models import AbstractUser


class Regions(models.Model):
    name = models.CharField(max_length=200)
    ordinal_symbol = models.CharField(max_length=200)
    order = models.IntegerField(max_length=200)

class comunas(models.Model):
    name = models.CharField(max_length=200)
    region = models.ForeignKey(Regions, on_delete=models.CASCADE)

class tipo_usuario(models.Model):
    rol = models.CharField(max_length=200)

class User(AbstractUser):
    #comuna = models.OneToOneField(comunnes, on_delete=models.CASCADE)
    #tipo_usuario = models.OneToOneField(tipo_usuario, on_delete=models.CASCADE)
    comuna = models.ForeignKey(comunas, on_delete=models.CASCADE)
    tipo_usuario = models.ForeignKey(tipo_usuario, on_delete=models.CASCADE)
    direccion = models.CharField(max_length=200 ,null=True)
    numero = models.IntegerField(null=True)

    
class recolector(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

class productor(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

class asociados(models.Model):
    recolector = models.ForeignKey(recolector,on_delete=models.CASCADE)
    productor =  models.ForeignKey(productor,on_delete=models.CASCADE)

class residuos(models.Model):
    usuarios_asociados =  models.ForeignKey(asociados, on_delete=models.CASCADE)
    fecha = models.DateField()
    kilos = models.IntegerField()
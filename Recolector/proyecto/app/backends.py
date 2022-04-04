from django.contrib.auth.backends import ModelBackend
from django.shortcuts import render, redirect
from app.models import User, tipo_usuario



class CustomerBackend(ModelBackend):

    def authenticate(self, request, **kwargs):
        username = kwargs['username']
        password = kwargs['password']
        numero_usuario = 3
        recolector = tipo_usuario.objects.get(id=numero_usuario)
        try:
            user = User.objects.get(username=username,tipo_usuario=recolector)
            if user.check_password(password) is True:
                return user
        except User.DoesNotExist:
            user = None
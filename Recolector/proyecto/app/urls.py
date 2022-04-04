from django.contrib import admin
from django.urls import path, include
from .views import recolector_home, login, logout_vista, recolector_ingresos, registro, recolector_rutas, recolector_recolectores

urlpatterns = [
    path('',login, name='LOGIN'),
    path('logout_vista/',logout_vista, name='LOGOUT'),
    path('home/',recolector_home,name='INDX'),
    path('ingresos/',recolector_ingresos,name='INGR'),
    path('rutas/',recolector_rutas,name='RUTAS'),
    path('recolectores/',recolector_recolectores,name='RECO'),
    path('registro/',registro,name='REG')
]
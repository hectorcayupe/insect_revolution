from itertools import count, groupby
from multiprocessing.sharedctypes import Value
from MySQLdb import Date
from django.shortcuts import render, redirect
#from django.contrib.auth.models import User
from django.contrib.auth import authenticate, logout, login as login_autent
from .models import User, asociados, recolector, residuos
from datetime import datetime
from django.db.models import Count, Sum
from django.db.models.functions import ExtractMonth, TruncMonth

# Create your views here.
def login(request):
    if request.POST:
        usuario = request.POST.get("usuario")
        password = request.POST.get("password")
        us = authenticate(request, username=usuario,password=password)
        if us is not None and us.is_active:
            login_autent(request,us)
            return redirect('INGR')
        else:
            return render(request,'web/login.html',{'msg':'Su usuario no corresponde'}) 
    return render(request, 'web/login.html')

def logout_vista(request):
    logout(request)
    return redirect('LOGIN')
    
def recolector_home(request):
    user = request.user.id
    sql_1 = asociados.objects.prefetch_related('recolector').select_related('recolector__user')
    #verificando la consulta de recolectores SQL por consola
    #print (sql_1.query)
    for a in sql_1:
        #probando las consultas que necesito
        #print(a.recolector.user)
        #print(a.recolector.user.first_name)
        #print(a.recolector.user.tipo_usuario)
        if a.recolector.user.id == user:
            id_asociado = a.id
    sql_2 = asociados.objects.prefetch_related('productor').select_related('productor__user')
    #verificando la consulta de productores SQL por consola
    #print (sql_2.query)

    
    lista = []
    for e in sql_2:
        #if e.id == id_asociado:
         #probando las consultas que necesito
         #print(e.id) 
         #print(e.productor.user.first_name)
         lista.append(e)
    for l in lista:
        print(l.productor.user.first_name)
        print(l.id)
    
    data = {'productores': lista}

    if request.method =='POST':
        productor = request.POST.get('productor')
        kilos = request.POST.get('kilos')
        fecha = datetime.today().strftime('%Y-%m-%d')

        r = residuos()
        r.usuarios_asociados = asociados.objects.get(id=productor)
        r.fecha = fecha
        r.kilos = kilos
        r.save()
        return render(request,'web/recolector_home.html',{'msg':'Kilos ingresados'})
    return render(request, 'web/recolector_home.html',data)

def recolector_ingresos(request):
    user = request.user.id
    sql_1 = asociados.objects.prefetch_related('productor').select_related('productor__user')
    lista = []
    for s in sql_1:
        if user == s.productor.user.id:
            #print(s.id)
            sql_2 = residuos.objects.all().select_related('usuarios_asociados__recolector__user__comuna').order_by('-fecha')
            #print (sql_2.query)
            for i in sql_2:
                if i.usuarios_asociados.id == s.id:
                    #print(i.usuarios_asociados.recolector.user.first_name)
                    #print(i.usuarios_asociados.recolector.user.comuna.name)
                    lista.append(i)

    data = {'datos': lista}
    return render(request, 'web/recolector_ingresos.html',data)

def recolector_rutas(request):
    user = request.user.id
    lista = []
    sql_1 = residuos.objects.select_related('usuarios_asociados__productor__user__comuna').annotate(month=TruncMonth('fecha')).values('month').annotate(c=Count('usuarios_asociados')).annotate(d=Sum('kilos')).values('month', 'c','d')
    print (sql_1.query)
    for i in sql_1:
        #if i.usuarios_asociados.productor.user.id == user:
            #print(i.usuarios_asociados.recolector.prodcutor.id)
            #print(i.usuarios_asociados.recolector.user.first_name)
            #print(i.usuarios_asociados.recolector.user.comuna.name)
            lista.append(i)

    #l = residuos.objects.annotate(month=TruncMonth('fecha')).values('month').annotate(c=Count('usuarios_asociados')).annotate(d=Sum('kilos')).values('month', 'c','d')
    l =  residuos.objects.extra({'month':"Extract(month from fecha)"}).values_list('month').annotate(Count('id')).values('usuarios_asociados__productor__user')
    for i in l:
        print(i.usuarios_asociados.productor.id)
    #print(i.id)
    data = {'datos': lista}
    return render(request,'web/recolector_rutas.html',data)

def recolector_recolectores(request):
    sql_1 = recolector.objects.all().select_related('user__comuna__region')
    #print (sql_1.query)
    lista = []
    for i in sql_1:
        lista.append(i)

    data = {'datos': lista}
    return render(request,'web/recolector_recolectores.html',data)


def registro(request):
    if request.POST:
        nombre = request.POST.get("nombre")
        apellido = request.POST.get("apellido")
        correo = request.POST.get("correo")
        usuario = request.POST.get("nomusuario")
        password = request.POST.get("contrasena")


        try:
            u = User.objects.get(username=usuario)
            return render(request,'web/registro.html',{'msg':'El usuario ya existe'})
        except:
            
            u = User()
            u.username = usuario
            u.first_name = nombre
            u.last_name = apellido
            u.email = correo
            u.set_password(password)
            u.save()
    return render(request,'web/registro.html')


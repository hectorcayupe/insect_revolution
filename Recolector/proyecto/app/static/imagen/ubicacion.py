from urllib import request
import geocoder
from geopy.geocoders import Nominatim

#Telegram
import requests
import json

#Google map
import googlemaps


ipaddress=geocoder.ip('me')
print(ipaddress.lat)
print(ipaddress.lng)



geocalizador=Nominatim(user_agent="GetLoc")
ubicacion=geocalizador.reverse(ipaddress.latlng)
print(ubicacion.address)

lugar = ubicacion.address
print(lugar)

#Maps

#API_KEY = 'AIzaSyDNV3lmL_yicmn_kDDyC_7JYEKUvGB_rcI'

#map_client = googlemaps.Client(API_KEY)

#ubi = map_client.geolocation(lugar)


r = requests.post('https://api.telegram.org/bot5165296020:AAHDGcplj3ovqJ78CqfwVKgDM_RNnhyGFP0/sendMessage',
data={'chat_id':'-1001533521873','text':'Necesito Ayuda !! Mi Ubicacion: '+ str(ubicacion.address) +' '+ 'Coordenadas:' +' '+ str(ipaddress.latlng) + ' '+'https://www.google.com/maps/place/?q=place_id:ChIJmVYVhxLFYpYRZvBjqaElgyk'})

data = json.loads(r.text)
print(data)
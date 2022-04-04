from lib2to3.pgen2 import token
from unittest import result
import requests

def send_msg(text):
    token = "5136259061:AAH_PHKb9a6a_mhFOxeecJUdBZAIizKJpAI"
    chat_id ="@desarrolloAppVif"
    url_req = "https://api.telegram.org/bot"+token+"/sendMessage" + "?chat_id="+ chat_id + "&text="+ text
    resultado = requests.get(url_req)
    return resultado
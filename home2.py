from kivy.app import App
from kivymd.app import MDApp

from kivy.properties import ObjectProperty
from kivy.lang import Builder

import urllib.request, json

from kivy.uix.widget import Widget
from kivy.uix.screenmanager import ScreenManager, Screen

from kivy.uix.boxlayout import BoxLayout
from kivymd.uix.boxlayout import MDBoxLayout



def cekLogin(username, password):
    with urllib.request.urlopen("http://localhost/api_new.php?auth=888&perintah=login&nama_user="+username+"&pass="+password) as json_url:
        data = json.loads(json_url.read())
        usernameTabel = data[0]["nama_user"]
        passwordTabel = data[0]["pass"]

        #root.manager.current = 'Beranda'
        if username==usernameTabel and password==passwordTabel:
            #print("Login Berhasil")
            data=1
        else:
            #print("login gagal")
            data=0

    return data

def SaveSignUp(username_SU, password_SU):
    with urllib.request.urlopen("http://localhost/api_new.php?auth=888&perintah=insert_user&nama_user="+username_SU+"&pass="+password_SU) as json_url:
        data = json.loads(json_url.read())
        usernameTabel = data[0]["nama_user"]
        passwordTabel = data[0]["pass"]

        if username==usernameTabel and password==passwordTabel:
            data=1
        else:
            data=0

    return data







def Guru(nip, nm_gr):
    with urllib.request.urlopen("http://localhost/api_new.php?auth=888&perintah=insert_guru&nip="+nip+"&nm_gr="+nm_gr)as json_url:
        data = json.loads(json_url.read())
        nipTabel = data[0]["nip"]
        namaTabel = data[0]["nm_gr"]

        if nip==nipTabel and nm_gr==namaTabel:
            data=1
        else:
            data=0
    return data





def Siswa(nis, nm_siswa):
    with urllib.request.urlopen("http://localhost/api_new.php?auth=888&perintah=insert_siswa&nis="+nis+"&nm_siswa="+nm_siswa)as json_url:
        data = json.loads(json_url.read())
        nisTabel = data[0]["nis"]
        nm_siswaTabel = data[0]["nm_siswa"]

    return data





def Kelas(kd_guru, kd_siswa, kelas):
    with urllib.request.urlopen("http://localhost/api_new.php?auth=888&perintah=insert_kelas&kd_guru"+kd_guru+"&kd_siswa="+kd_siswa+"&kelas="+kelas)as json_url:
        data = json.loads(json_url.read())
        kd_guruTabel = data[0]["kd_guru"]
        kd_siswaTabel = data[0]["kd_siswa"]
        kelasTabel = data[0]["kelas"]

    return data


class LoginScreen(Screen):
    def doLogin(self):
        #print("Halooo")
        if cekLogin(self.txtUsername_.text,self.txtPassword_.text) == 1:
            print("masuk ke menu")
            self.manager.current = 'Beranda'

        
class SignupScreen(Screen):
    def doSaveSignUp(self):
        SaveSignUp(self.txtUsername_SU.text, self.txtPassword_SU.text)

class HomeScreen(Screen):
   pass



class GuruScreen(Screen):
    def doGuru(self):
        Guru(self.txtnip_G.text, self.txtnama_G.text)    



class SiswaScreen(Screen):
    def doSiswa(self):
        Siswa(self.txtnis_S.text, self.txtnama_S.text)
   


class KelasScreen(Screen):
    def doKelas(self):
        Kelas(self.txtkdgr_.text, self.txtkdsiswa_.text, self.txtkls_.text)


# penamaan class harus sama dengan file kv
# sim.kv
# nama class WAJIB SimApp
class Sim2App(MDApp):
    pass
if __name__ == '__main__':
     def build(self):
        self.theme_cls.primary_palette = "Blue"
Sim2App().run()
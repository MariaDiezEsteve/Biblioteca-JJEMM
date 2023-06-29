from datetime import datetime
import jwt
from src.gestor_jwt import token_required
from flask_mysqldb import MySQL
from flask import jsonify
import mysql.connector
from mysql.connector import errorcode
from flask import jsonify


DATABASE = {
    'host': "containers-us-west-59.railway.app",
    'user': 'root',
    'password': "mzj8vF2N8BRe4h8m8cyB",
    'database': "railway"
}

class Users:
    def __init__(self, iduser, DNI, Name, LastName, Email, Password, secret, Rol):
        self.iduser = iduser
        self.DNI = DNI
        self.Name = Name
        self.Lastname = LastName
        self.Email = Email
        self.Password = Password
        self.secret = secret
        self.Rol = Rol

    @classmethod
    def login(cls, Email, Password):
        conn = None
        try:
            conn = MySQL.connect(**DATABASE)
            c = conn.cursor()
            c.execute("SELECT * FROM user WHERE Email=?", (Email, ))
            result = c.fetchone()

            if result and result[4] == Password:
                secret = str(datetime.now().timestamp())
                user = {
                    "iduser": result[0],
                    "Name": result[1],
                    "Lastname": result[2],
                    "Email": result[3],
                    "Password": result[4],
                    "secret": secret,
                    "Rol": result[6]
                }
                token = Users.generate_token(user, secret)
                return user, token
            else:
                return ({"error": "Credenciales inválidas"}), 401

        except MySQL.Error as e:
            return ({"SQLError": str(e)}, 500)
        finally:
            if conn is not None:
                conn.close()
                
   
   
    


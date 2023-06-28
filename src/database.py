#THAT IS THE FILE database.py WHICH CONNECT WITH THE DATABASE

#1. We need is a connector: mysql-conector
import mysql.connector

#2. Set up to connect with database
#create a variable to connect with mysql
# def conectdb():
#     try:
#         con = mysql.connector.connect(
#             host = "containers-us-west-59.railway.app",
#             user = "root",
#             passwd = "mzj8vF2N8BRe4h8m8cyB",
#             database = "railway",
#             port = 5906 
#         )
#         print ("conectado ")
#     except Exception as e:
#         print (f"error de conexion {e}")

#     return  con

# conectdb()


def conectdb():
    host = "containers-us-west-59.railway.app"
    user = "root"
    passwd = "mzj8vF2N8BRe4h8m8cyB"
    database = "railway"
    port = 5906
    auth_plugin='mysql_native_password'
    
    try:
        con = mysql.connector.connect(
            host=host,
            user=user,
            passwd=passwd,
            database=database,
            port=port,
            auth_plugin=auth_plugin
        )
        print("Conexión exitosa a la base de datos")
        return con
    except mysql.connector.Error as error:
        print(f"Error al conectarse a la base de datos: {error}")
        return None

    # Tests that the function connects to the database with correct credentials and returns a connection object
    # Tests that the function returns None when connecting to a non-existent database

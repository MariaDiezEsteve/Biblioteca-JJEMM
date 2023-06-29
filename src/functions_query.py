from flask import redirect, render_template
# Import the file database.py
import src.database as db
import jwt
import os

database_path = ""


def init_db(database):
    global database_path
    database_path = database

def get_books():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT * FROM books")

    mybooks = cursor.fetchall()
    books_array = []
    books_col_Names = [column[0] for column in cursor.description]
    for book in mybooks:
        books_array.append(dict(zip(books_col_Names, book)))

    return render_template('books.html', data=books_array)
    cursor.close()


def get_videos():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT * FROM videos")

    myvideos = cursor.fetchall()
    videos_array = []
    videos_col_Names = [column[0] for column in cursor.description]
    for video in myvideos:
        videos_array.append(dict(zip(videos_col_Names, video)))

    return render_template('videos.html', data=videos_array)
    cursor.close()


def get_soundtracks():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT * FROM soundTracks")

    mysoundtracks = cursor.fetchall()
    soundtracks_array = []
    soundtracks_col_Names = [column[0] for column in cursor.description]
    for soundtrack in mysoundtracks:
        soundtracks_array.append(dict(zip(soundtracks_col_Names, soundtrack)))

    return render_template('soundtrack.html', data=soundtracks_array)
    cursor.close()


def get_users():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT * FROM user")

    myusers = cursor.fetchall()
    users_array = []
    users_col_Names = [column[0] for column in cursor.description]
    for user in myusers:
        users_array.append(dict(zip(users_col_Names, user)))

    return render_template('users.html', data=users_array)
    cursor.close()


def get_loans():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT * FROM loands")

    myloans = cursor.fetchall()
    loans_array = []
    loans_col_Names = [column[0] for column in cursor.description]
    for loan in myloans:
        loans_array.append(dict(zip(loans_col_Names, loan)))

    return render_template('loans.html', data=loans_array)
    cursor.close()


def get_category_of_books():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute(
        "SELECT Category, COUNT(Category) AS Total FROM books GROUP BY Category")

    mycategorys = cursor.fetchall()
    categorys_array = []
    categorys_col_Names = [column[0] for column in cursor.description]
    for category in mycategorys:
        categorys_array.append(dict(zip(categorys_col_Names, category)))

    return render_template('category_books.html', data=categorys_array)
    cursor.close()


def get_category_of_videos():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute(
        "SELECT Category, COUNT(Category) AS Total FROM videos GROUP BY Category")

    mycategorys = cursor.fetchall()
    categorys_array = []
    categorys_col_Names = [column[0] for column in cursor.description]
    for category in mycategorys:
        categorys_array.append(dict(zip(categorys_col_Names, category)))

    return render_template('category_videos.html', data=categorys_array)
    cursor.close()


def get_category_for_aventure():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute(
        "SELECT Title, Category FROM books WHERE Category='Aventura'")

    mycategorys = cursor.fetchall()
    categorys_array = []
    categorys_col_Names = [column[0] for column in cursor.description]
    for category in mycategorys:
        categorys_array.append(dict(zip(categorys_col_Names, category)))
    cursor.close()
    return render_template('category_for_aventure.html', data=categorys_array)
   


def books_and_videos_for_age():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT idbooks AS ID, Title, AgeRating FROM books WHERE AgeRating IN ('Infantil', 'Juvenil', 'Todos los públicos') UNION  SELECT idvideos, Title, AgeRating FROM videos WHERE AgeRating IN ('Infantil', 'Juvenil', 'Todos los públicos')")

    mycategorys = cursor.fetchall()
    categorys_array = []
    categorys_col_Names = [column[0] for column in cursor.description]
    for category in mycategorys:
        categorys_array.append(dict(zip(categorys_col_Names, category)))

    return render_template('category_for_age.html', data=categorys_array)
    cursor.close()


def books_by_languages():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute(
        "SELECT Language, COUNT(*) AS Total FROM books GROUP BY Language;")

    mylanguages = cursor.fetchall()
    languages_array = []
    languages_col_Names = [column[0] for column in cursor.description]
    for language in mylanguages:
        languages_array.append(dict(zip(languages_col_Names, language)))
    cursor.close()
    return render_template('books_by_languages.html', data=languages_array)
   


def state_of_products():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("""SELECT idbooks as ID, Title, State FROM books 
                   UNION
                   SELECT idvideos as ID, Title, State FROM videos
                   UNION
                   SELECT idsoundTracks as ID, Title, State FROM soundTracks;""")

    mystates = cursor.fetchall()
    states_array = []
    states_col_Names = [column[0] for column in cursor.description]
    for state in mystates:
        states_array.append(dict(zip(states_col_Names, state)))
    cursor.close()
    return render_template('state_of_products.html', data=states_array)
    
def loans_for_date():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("""SELECT loands.*, 
    CASE
        WHEN loands.idbooks IS NOT NULL THEN books.Title
        WHEN loands.idvideos IS NOT NULL THEN videos.Title
        WHEN loands.idsoundTracks IS NOT NULL THEN soundTracks.Title
    END AS Title
    FROM railway.loands
    LEFT JOIN railway.books ON loands.idbooks = books.idbooks
    LEFT JOIN railway.videos ON loands.idvideos = videos.idvideos
    LEFT JOIN railway.soundTracks ON loands.idsoundTracks = soundTracks.idsoundTracks
    WHERE loands.LoanDate = '2023-06-26';
    """)

    myloan_dates = cursor.fetchall()
    loan_dates_array = []
    loan_dates_col_Names = [column[0] for column in cursor.description]
    for loan_date in myloan_dates:
        loan_dates_array.append(dict(zip(loan_dates_col_Names, loan_date)))
    cursor.close()
    return render_template('loans_for_date.html', data=loan_dates_array)

def loans_for_products():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("""SELECT u.iduser as id, u.Name as name, u.Lastname as lastname, b.Title as book, v.Title as video, s.Title as Soundtrack
                    FROM loands l
                    LEFT JOIN user u ON l.iduser = u.iduser
                    LEFT JOIN books b ON l.idbooks = b.idbooks
                    LEFT JOIN videos v ON l.idvideos = v.idvideos
                    LEFT JOIN soundTracks s ON l.idsoundTracks = s.idsoundTracks
                    where u.iduser = 1005;
                    """)

    myloans = cursor.fetchall()
    loans_array = []
    loans_col_Names = [column[0] for column in cursor.description]
    for loan in myloans:
        loans_array.append(dict(zip(loans_col_Names, loan)))

    return render_template('loans_for_products.html', data=loans_array)
    cursor.close()
    
def count_records_company():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("""SELECT RecordCompany, COUNT(*) AS soundTrackCount
                        FROM railway.soundTracks
                        WHERE State = 'Disponible'
                        GROUP BY RecordCompany
                        HAVING COUNT(*) > 2;

                    """)

    mycompanys = cursor.fetchall()
    companys_array = []
    companys_col_Names = [column[0] for column in cursor.description]
    for company in mycompanys:
        companys_array.append(dict(zip(companys_col_Names, company)))

    return render_template('recordsCompany_for_state.html', data=companys_array)
    cursor.close()


# ---------------------- DELETE --------------------------

def delete_books_by_id(idbooks):
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("DELETE FROM books WHERE idbooks = %s", (idbooks,))

    con.commit()
    cursor.close()
    con.close()

# ---------------------- CREATE USER ----------------
SECRET_KEY = 'B!1w8NAt1T^%kvhUI*S^'

import traceback

def create_user(user):
    try:
        con = db.conectdb()
        cursor = con.cursor()
        insert_query = "INSERT INTO user (DNI, Name, Lastname, Email, Password) VALUES (%s, %s, %s, %s, %s)"
        
        # Encriptar la contraseña con JWT
        encoded_password = jwt.encode({'password': user['Password']}, SECRET_KEY, algorithm='HS256')
        
        user_data = (user['DNI'], user['Name'], user['Lastname'], user['Email'], encoded_password)
        cursor.execute(insert_query, user_data)
        con.commit()
        cursor.close()
        con.close()
    except Exception as e:
        traceback.print_exc()  # Imprime el traceback del error
        # Aquí puedes agregar código adicional para manejar el error, como registrar el error en un archivo de registro, enviar una notificación, etc.

# --------------------------- ACCESS USER -----------


def login_user(email, password):
    con = db.conectdb()
    cursor = con.cursor()
    
    # Obtener la contraseña almacenada en la base de datos para el correo electrónico dado
    select_query = "SELECT Password FROM user WHERE Email = %s"
    cursor.execute(select_query, (email,))
    result = cursor.fetchone()
    
    # Verificar si se encontró un registro para el correo electrónico dado
    if result:
        stored_password = result[0]
        
        # Decodificar la contraseña almacenada
        decoded_password = jwt.decode(stored_password, SECRET_KEY, algorithms=['HS256'])
        
        # Comparar la contraseña decodificada con la contraseña no codificada proporcionada
        if decoded_password['Password'] == password:
            print("Las credenciales son válidas.")
        else:
            print("Contraseña incorrecta.")
    else:
        print("No se encontró ningún usuario con el correo electrónico proporcionado.")
    
    cursor.close()
    con.close()
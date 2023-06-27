from flask import redirect, render_template
# Import the file database.py
import src.database as db


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

    return render_template('category_for_aventure.html', data=categorys_array)
    cursor.close()


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

    return render_template('books_by_languages.html', data=languages_array)
    cursor.close()


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

    return render_template('state_of_products.html', data=states_array)
    cursor.close()


def loan_of_products(iduser):
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("""SELECT u.iduser, u.Name, u.Lastname, b.Title, v.Title, s.Title
                    FROM loands l
                    LEFT JOIN user u ON l.iduser = u.iduser
                    LEFT JOIN books b ON l.idbooks = b.idbooks
                    LEFT JOIN videos v ON l.idvideos = v.idvideos
                    LEFT JOIN soundTracks s ON l.idsoundTracks = s.idsoundTracks
                    where u.iduser = ?, [iduser];
                    """)

    myloans = cursor.fetchall()
    loans_array = []
    loans_col_Names = [column[0] for column in cursor.description]
    for loan in myloans:
        loans_array.append(dict(zip(loans_col_Names, loan)))

    return render_template('loan_of_products/<iduser>.html', data=loans_array)
    cursor.close()


#----------------------DELETE--------------------------

def delete_books_by_id(idbooks):
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT * FROM books WHERE idbooks = %s", (idbooks,))
    book= cursor.fetchone()
    
    if book:
        cursor.execute("DELETE FROM books WHERE idbooks = %s", (idbooks,))
    
        con.commit()
        cursor.close()
        con.close()
        return True 
    else:
        return False
    
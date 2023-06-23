from flask import render_template
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
    

    
def get_category_of_books():
    con = db.conectdb()
    cursor = con.cursor()
    cursor.execute("SELECT Category, COUNT(Category) AS Total FROM books GROUP BY Category")

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
    cursor.execute("SELECT Category, COUNT(Category) AS Total FROM videos GROUP BY Category")

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
    cursor.execute("SELECT Title, Category FROM books WHERE Category='Aventura'")

    mycategorys = cursor.fetchall()
    categorys_array = []
    categorys_col_Names = [column[0] for column in cursor.description]
    for category in mycategorys:
        categorys_array.append(dict(zip(categorys_col_Names, category)))

    return render_template('category_for_aventure.html', data=categorys_array)
    cursor.close()   
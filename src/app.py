from flask import Flask, render_template, redirect
import os


# Import the file database.py
import database as db


# INITIALIZING FLASK TO EXECUTE THE APLICATION IN LOCALHOST
# Declarate a variable to initializing with Flask
# Template folder is the directory we are (index.html) is the same as template_dir
# App will look for the template to execute into an scren
app = Flask(__name__, template_folder="templates")

# TO SET UP THE PRINCIPAL ROUTE

# Application routes


@app.route("/")
def home():
    return render_template('index.html')
# We want to show the template index.html so we need to import render template from flask


@app.route("/books")
def index():
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


# TO EXECUTE THE APPLICATION
if __name__ == '__main__':
    app.run(debug=True)
# with app.run we're going to indicate that the app is going to be in development

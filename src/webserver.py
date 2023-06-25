from flask import Flask, render_template, redirect
import os
from .functions import *


app = Flask(__name__, template_folder="templates")


@app.route("/")
def home():
    return render_template('index.html')
# We want to show the template index.html so we need to import render template from flask


@app.route("/books")
def indexb():
    return get_books()


@app.route("/videos")
def indexv():
    return get_videos()


@app.route("/soundtracks")
def indexs():
    return get_soundtracks()


@app.route("/users")
def indexu():
    return get_users()


@app.route("/loans")
def indexl():
    return get_loans()


@app.route("/category_books")
def category_books():
    return get_category_of_books()


@app.route("/category_videos")
def category_videos():
    return get_category_of_videos()


@app.route("/category_for_aventure")
def category_aventure():
    return get_category_for_aventure()


@app.route("/category_for_age")
def category_age():
    return books_and_videos_for_age()


@app.route("/books_by_language")
def language():
    return books_by_languages()


@app.route("/state_of_products")
def state():
    return state_of_products()


# TO EXECUTE THE APPLICATION
if __name__ == '__main__':
    app.run(debug=True)
# with app.run we're going to indicate that the app is going to be in development

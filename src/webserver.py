from flask import Flask, render_template, redirect, url_for, request, jsonify
import os
from .functions_query import *
from flask_cors import CORS
from src.models.model_user import *



def create_app(database):

    app = Flask(__name__, template_folder="templates")
    CORS(app)

    init_db(database)

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


    @app.route("/users", methods=['GET', 'POST'] )
    def indexu():
        if request.method == 'POST':
            iduser = request.form['iduser']
            return loans_for_products(iduser)
        else: 
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
    
    @app.route("/loans_for_date")
    def loans_date():
        return loans_for_date()
    
    # @app.route("/loans_for_products")
    # def loans_products():
    #     return loans_for_products()
    
    @app.route("/RecordsCompany")
    def records_company():
        return count_records_company()    

    @app.route("/book_by_state")
    def book_state():
            return book_by_state()   

    # ----------------------DELETE--------------------------
  

    @app.route('/books/<int:idbooks>', methods=['DELETE'])
    def delete_book(idbooks):
        if delete_books_by_id(idbooks):
            return "El libro ha sido borrado"
        else:
            return "El libro no existe"
    
    # --------------------------- CREATE USER ------------------

    @app.route("/register", methods=['GET', 'POST'])
    def create_users():
        if request.method == 'POST':
            dni = request.form['DNI']
            name = request.form['Name']
            lastname = request.form['Lastname']
            email = request.form['Email']
            password = request.form['Password']
            user = {
                'DNI': dni,
                'Name': name,
                'Lastname': lastname,
                'Email': email,
                'Password': password
            }
            create_user(user)
            return render_template('login.html')
        else:
            return render_template('register.html')
    
    # ----------------- ACCESS USER --------------
    @app.route("/login", methods=['GET', 'POST'])
    def login():
        if request.method == 'POST':
            email = request.form["Email"]
            password = request.form["Password"]
            if email and password:
                print ('@#@#@# get_logged_user', email, password)
                return render_template('ei.html')
            user, token = Users.login(email, password)
            if user:
                return jsonify({'user': user, 'token': token})    
            return jsonify({'message': 'Error en el login ROUTER'})
        else:        
            return render_template('login.html')

    # TO EXECUTE THE APPLICATION
    if __name__ == '__main__':
        app.run(debug=True)
    # with app.run we're going to indicate that the app is going to be in development
    return app
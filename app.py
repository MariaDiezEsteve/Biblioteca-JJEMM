from flask import Flask, render_template, redirect
import os
from src.webserver import create_app
import src.database as db




# INITIALIZING FLASK TO EXECUTE THE APLICATION IN LOCALHOST
# Declarate a variable to initializing with Flask
# Template folder is the directory we are (index.html) is the same as template_dir
# App will look for the template to execute into an scren
app= create_app(db.conectdb())
app.run(debug=True)









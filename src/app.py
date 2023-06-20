#https://www.youtube.com/watch?v=Zfpbnmdi-pE

from flask import Flask, render_template
import os

#Template guide: we need to put the name of our application.
#With os we can access to the path and function name 
template_dir = os.path.dirname(os.path.abspath(__file__))

template_dir = os.path.join(template_dir,'src', 'templates')

app = Flask(__name__, template_folder = template_dir )

#Aplication routers

@app.router("/")
def home():
    return render_template('index.html')


if __name__ == '__main__':
   app.run(debug=True, host='0.0.0.0', port=5000, threaded=True)    
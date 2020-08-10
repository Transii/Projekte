from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SECRET_KEY'] = '5791628bb0b13ce0c676dfde280ba245'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///database/test_site.db'
#app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///database/site.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
UPLOAD_FOLDER = "sortierung/uploads"
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

from sortierung import main_app
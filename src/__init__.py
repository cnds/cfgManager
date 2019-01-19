from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from config import config

db = SQLAlchemy()
app = Flask(__name__)


def create_app(cfg_name):
    app.config.from_object(config[cfg_name])
    db.init_app(app)

    return app




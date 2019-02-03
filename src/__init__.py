from flask import Flask
from config import config

from logging.config import dictConfig
from flask_sqlalchemy import SQLAlchemy

dictConfig({
    'version': 1,
    'formatters': {'default': {
        'format': '[%(asctime)s] %(levelname)s %(filename)s: >>>> %(message)s',
    }},
    'handlers': {'wsgi': {
        'class': 'logging.StreamHandler',
        'stream': 'ext://flask.logging.wsgi_errors_stream',
        'formatter': 'default'
    }},
    'root': {
        'level': 'INFO',
        'handlers': ['wsgi']
    }
})

app = Flask(__name__)


class Storage(SQLAlchemy):

    def __init__(self):
        super(Storage, self).__init__()
        self._sessions = {}

    def get_session(self, bind_key='local'):
        if bind_key in self._sessions:
            return self._sessions[bind_key]

        engine = self.create_engine(app.config['SQLALCHEMY_BINDS'][bind_key])
        session = self.sessionmaker(engine)()
        self._sessions[bind_key] = session

        return session


db = Storage()


def create_app(cfg_name):
    app.config.from_object(config[cfg_name])
    db.init_app(app)

    return app

from flask import Flask

from flask_sqlalchemy import SQLAlchemy

from config import config


class Storage(SQLAlchemy):

    def __init__(self):
        super(Storage, self).__init__()
        self._sessions = {}

    def get_session(self, bind_key='local'):
        if bind_key in self._sessions:
            return self._sessions[bind_key]

        engine = self.create_engine(app.config['SQLALCHEMY_BINDS'][bind_key], encoding='utf8')
        session = self.sessionmaker(engine)()
        self._sessions[bind_key] = session

        return session


app = Flask(__name__)
db = Storage()


def create_app(cfg_name):
    app.config.from_object(config[cfg_name])
    db.init_app(app)

    return app

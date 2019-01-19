from src import db


class DConfig(db.Model):
    __tablename__ = 'dconfig'
    name = db.Column(db.String(255), nullable=False, primary_key=True)
    value = db.Column(db.String(1023), nullable=False)
    value_type = db.Column(db.Integer, nullable=False)
    description = db.Column(db.String(255), nullable=False)

    def __init__(self, **kwargs):
        super(DConfig, self).__init__(**kwargs)

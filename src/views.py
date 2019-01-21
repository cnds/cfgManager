from flask import render_template
from src.models import DConfig
from src import app


@app.route('/configs')
def configuration():
    rs = DConfig.query.all()
    configs = [
        {
            'name': i.name,
            'value': i.value,
            'value_type': i.value_type,
            'description': i.description
        }
        for i in rs]
    return render_template('index.html', configs=configs)

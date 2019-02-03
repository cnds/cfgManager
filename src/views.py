from flask import render_template, request, jsonify
from src.models import DConfig
from src import app, db


@app.route('/configs')
def configuration():
    db_binds = set(app.config['SQLALCHEMY_BINDS'].keys())
    query_params = request.args.to_dict()
    db_name = query_params.get('db', 'local')
    if db_name and db_name not in db_binds:
        # TODO render error page
        return jsonify({'error': 'INVALID_DB_NAME'}), 400

    rs = db.get_session(db_name).query(DConfig).all()
    configs = [
        {
            'name': i.name,
            'value': i.value,
            'value_type': i.value_type,
            'description': i.description
        }
        for i in rs]

    return render_template('index.html', configs=configs, dbs=sorted(db_binds))

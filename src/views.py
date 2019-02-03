import json
from flask import render_template, request, jsonify
from src.models import DConfig
from src import app, db
from src.utils.encryption import create_md5


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


@app.route('/compare')
def compare_config():
    query_params = request.args.to_dict()
    db1 = query_params.get('db1')
    db2 = query_params.get('db2')
    if not (db1 and db2):
        return jsonify({'error': 'NEED_TWO_DB'}), 400

    db_binds = set(app.config['SQLALCHEMY_BINDS'].keys())
    if (db1 not in db_binds) or (db2 not in db_binds):
        return jsonify({'error': 'INVALID_DB_NAME'}), 400

    rs1 = db.get_session(db1).query(DConfig).all()
    cfg1 = [
        {
            'name': i.name,
            'value': i.value,
            'value_type': i.value_type,
            'description': i.description
        }
        for i in rs1
    ]
    app.logger.debug('%s: length: %s' % (db1, len(cfg1)))
    md5_cfg1 = {create_md5(json.dumps(i)): i for i in cfg1}
    rs2 = db.get_session(db2).query(DConfig).all()
    cfg2 = [
        {
            'name': i.name,
            'value': i.value,
            'value_type': i.value_type,
            'description': i.description
        }
        for i in rs2
    ]
    app.logger.debug('%s: length: %s' % (db2, len(cfg2)))
    md5_cfg2 = {create_md5(json.dumps(j)): j for j in cfg2}
    diff1 = set(md5_cfg1.keys()) - set(md5_cfg2.keys())
    diff2 = set(md5_cfg2.keys()) - set(md5_cfg1.keys())
    diff_keys = []
    for k in diff1:
        diff_keys.append(md5_cfg1[k]['name'])

    for l in diff2:
        diff_keys.append(md5_cfg2[l]['name'])

    name_cfg1 = {i['name']: i for i in cfg1}
    name_cfg2 = {j['name']: j for j in cfg2}
    final_diff = []
    for key in diff_keys:
        final_diff.append([name_cfg1.get(key, {}), name_cfg2.get(key, {})])

    app.logger.debug('final diff: %s' % final_diff)
    return jsonify(final_diff)

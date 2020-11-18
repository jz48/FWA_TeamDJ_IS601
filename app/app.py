from typing import List, Dict
import simplejson as json
from flask import Flask, request, Response, redirect
from flask import render_template
from flaskext.mysql import MySQL
from pymysql.cursors import DictCursor

app = Flask(__name__)
mysql = MySQL(cursorclass=DictCursor)

app.config['MYSQL_DATABASE_HOST'] = 'db'
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_DB'] = 'movie'
mysql.init_app(app)


@app.route('/', methods=['GET'])
def index():
    user = {'username': 'Movie rating'}
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating')
    result = cursor.fetchall()
    return render_template('index.html', title='Home', user=user, ratings=result)


@app.route('/view/<string:title>', methods=['GET'])
def record_view(title):
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating WHERE Title=%s', title)
    result = cursor.fetchall()
    return render_template('view.html', title='View Form', mr=result[0])


@app.route('/edit/<string:title>', methods=['GET'])
def form_edit_get(title):
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating WHERE Title=%s', title)
    result = cursor.fetchall()
    return render_template('edit.html', title='Edit Form', mr=result[0])


@app.route('/edit/<string:title>', methods=['POST'])
def form_update_post(title):
    cursor = mysql.get_db().cursor()
    inputData = (request.form.get('score'), request.form.get('year'), title)
    sql_update_query = """UPDATE MovieRating m SET t.Score = %s, t.Year = %s WHERE t.title = %s """
    cursor.execute(sql_update_query, inputData)
    mysql.get_db().commit()
    return redirect("/", code=302)


@app.route('/mrs/new', methods=['GET'])
def form_insert_get():
    return render_template('new.html', title='New City Form')


@app.route('/mrs/new', methods=['POST'])
def form_insert_post():
    cursor = mysql.get_db().cursor()
    inputData = (request.form.get('fldName'), request.form.get('fldLat'), request.form.get('fldLong'),
                 request.form.get('fldCountry'), request.form.get('fldAbbreviation'),
                 request.form.get('fldCapitalStatus'), request.form.get('fldPopulation'))
    sql_insert_query = """INSERT INTO MovieRating (fldName,fldLat,fldLong,fldCountry,fldAbbreviation,fldCapitalStatus,fldPopulation) VALUES (%s, %s,%s, %s,%s, %s,%s) """
    cursor.execute(sql_insert_query, inputData)
    mysql.get_db().commit()
    return redirect("/", code=302)


@app.route('/delete/<string:title>', methods=['POST'])
def form_delete_post(title):
    cursor = mysql.get_db().cursor()
    sql_delete_query = """DELETE FROM MovieRating WHERE Title = %s """
    cursor.execute(sql_delete_query, title)
    mysql.get_db().commit()
    return redirect("/", code=302)


@app.route('/api/v1/mrs', methods=['GET'])
def api_browse() -> str:
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating')
    result = cursor.fetchall()
    json_result = json.dumps(result);
    resp = Response(json_result, status=200, mimetype='application/json')
    return resp


@app.route('/api/v1/cities/<int:city_id>', methods=['GET'])
def api_retrieve(city_id) -> str:
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating WHERE id=%s', city_id)
    result = cursor.fetchall()
    json_result = json.dumps(result);
    resp = Response(json_result, status=200, mimetype='application/json')
    return resp


@app.route('/api/v1/cities/', methods=['POST'])
def api_add() -> str:
    resp = Response(status=201, mimetype='application/json')
    return resp


@app.route('/api/v1/cities/<int:city_id>', methods=['PUT'])
def api_edit(city_id) -> str:
    resp = Response(status=201, mimetype='application/json')
    return resp


@app.route('/api/cities/<int:city_id>', methods=['DELETE'])
def api_delete(city_id) -> str:
    resp = Response(status=210, mimetype='application/json')
    return resp


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

from typing import List, Dict
import simplejson as json
from flask import Flask, request, Response, redirect
from flask import render_template, url_for, session
from flaskext.mysql import MySQL
from random import randint
from pymysql.cursors import DictCursor
from flask_mail import Mail, Message
from werkzeug.security import check_password_hash, generate_password_hash

app = Flask(__name__)
mysql = MySQL(cursorclass=DictCursor)

app.config['MYSQL_DATABASE_HOST'] = 'db'
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_DB'] = 'LoginData'
mysql.init_app(app)

app.config["MAIL_SERVER"]='smtp.gmail.com'
app.config["MAIL_PORT"]=587
app.config["MAIL_USERNAME"]='webappis601@gmail.com'
app.config['MAIL_PASSWORD']='h3lloworld1!'
app.config['MAIL_USE_TLS']=True
app.config['MAIL_USE_SSL']=False
mail = Mail(app)
otp = randint(000000, 999999)
name = ''


@app.route('/')
@app.route('/login', methods=['GET', 'POST'])
def login():
    msg = ''
    print('log in request!')
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
        username = request.form['username']
        password = request.form['password']
        print('1111111')
        print(username, ' : ', password)
        cursor = mysql.get_db().cursor()
        sql_query = ('SELECT * FROM accounts WHERE username = %s')
        accounts = (username,)
        cursor.execute (sql_query, accounts)
        result = cursor.fetchone ()['password']
        # if username:
        #   session['loggedin'] = True
        if check_password_hash(result, password):
            return redirect("/email", code=302)
            # return render_template ( 'verify.html' )
            # return redirect ( "/verify", code=302)
            # return render_template ( 'index.html', msg=msg )
        else:
            msg = 'Incorrect username / password !'
    return render_template('login.html', msg=msg)


@app.route('/email')
def email():
    return render_template("login2.html")


@app.route('/verify',methods=['POST'])
def verify():
    email = request.form['email']
    msg=Message( subject='OTP', sender='webappis601@gmail.com', recipients= [email] )
    msg.body = str(otp)
    mail.send(msg)
    return render_template('verify.html')


@app.route('/validate',methods=['POST'])
def validate():
    user_otp=request.form['otp']
    if otp == int(user_otp):
        return redirect ( "/index", code=302 )
    else:
        return "<h3>Please Try Again</h3>"


@app.route('/index', methods=['GET'])
def index():
    user = {'username': 'Movie rating'}
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating')
    result = cursor.fetchall()
    return render_template('index.html', title='Home', user=user, ratings=result)


@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('id', None)
    session.pop('username', None)
    return redirect(url_for('login'))


@app.route('/register', methods=['GET'])
def register_get():
    cursor = mysql.get_db().cursor()
    return render_template('register.html', title='Registration')


@app.route('/register', methods=['POST'])
def register_post():
    cursor = mysql.get_db().cursor()
    hash_pass = generate_password_hash(str(request.form['password']), "sha256")
    inputData = (request.form['username'], hash_pass, request.form['email'])
    sql_insert_query = """INSERT INTO accounts (username, password, email) VALUES (%s,%s, %s)"""
    cursor.execute(sql_insert_query, inputData)
    mysql.get_db().commit()
    return redirect("/", code=302)


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
    sql_update_query = """UPDATE MovieRating m SET m.Score = %s, m.Year = %s WHERE m.Title = %s """
    cursor.execute(sql_update_query, inputData)
    mysql.get_db().commit()
    return redirect("/index", code=302)


@app.route('/mrs/new', methods=['GET'])
def form_insert_get():
    return render_template('new.html', title='New Movie Rating Form')


@app.route('/mrs/new', methods=['POST'])
def form_insert_post():
    cursor = mysql.get_db().cursor()
    inputData = (request.form.get('title'), request.form.get('score'), request.form.get('year'))
    sql_insert_query = """INSERT INTO MovieRating (Title, Score, Year) VALUES (%s, %s,%s) """
    cursor.execute(sql_insert_query, inputData)
    mysql.get_db().commit()
    return redirect("/index", code=302)


@app.route('/delete/<string:title>', methods=['POST'])
def form_delete_post(title):
    cursor = mysql.get_db().cursor()
    sql_delete_query = """DELETE FROM MovieRating WHERE Title = %s """
    cursor.execute(sql_delete_query, title)
    mysql.get_db().commit()
    return redirect("/index", code=302)


@app.route('/api/v1/mrs', methods=['GET'])
def api_browse() -> str:
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating')
    result = cursor.fetchall()
    json_result = json.dumps(result)
    resp = Response(json_result, status=200, mimetype='application/json')
    return resp


@app.route('/api/v1/mrs/<string:title>', methods=['GET'])
def api_retrieve(title) -> str:
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM MovieRating WHERE Title=%s', title)
    result = cursor.fetchall()
    json_result = json.dumps(result)
    resp = Response(json_result, status=200, mimetype='application/json')
    return resp


@app.route('/api/v1/mrs', methods=['POST'])
def api_add() -> str:
    content = request.json
    cursor = mysql.get_db().cursor()
    inputData = (content['Title'], content['Score'], content['Year'])
    sql_insert_query = """INSERT INTO MovieRating (Title, Score, Year) VALUES (%s, %s,%s) """
    cursor.execute(sql_insert_query, inputData)
    mysql.get_db().commit()
    resp = Response(status=201, mimetype='application/json')
    return resp


@app.route('/api/v1/mrs/<string:title>', methods=['PUT'])
def api_edit(title) -> str:
    cursor = mysql.get_db().cursor()
    content = request.json
    inputData = (content['Title'], content['Score'], content['Year'])
    sql_update_query = """UPDATE MovieRating m SET m.Score = %s, m.Year = %s WHERE m.Title = %s """
    cursor.execute(sql_update_query, inputData)
    mysql.get_db().commit()
    resp = Response(status=201, mimetype='application/json')
    return resp


@app.route('/api/mrs/<string:title>', methods=['DELETE'])
def api_delete(title) -> str:
    cursor = mysql.get_db().cursor()
    sql_delete_query = """DELETE FROM MovieRating WHERE Title = %s """
    cursor.execute(sql_delete_query, title)
    mysql.get_db().commit()
    resp = Response(status=210, mimetype='application/json')
    return resp


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

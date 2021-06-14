import mysql.connector

cnx = mysql.connector.connect(user='doadmin',
                              password='mgfrwjggajh98th8',
                              host='db-mysql-sgp1-69238-do-user-742153-0.b.db.ondigitalocean.com',
                              port=25060,
                              database='defaultdb')
cursor = cnx.cursor()

query = "SELECT id, first_name, last_name FROM employees"
cursor.execute(query)

for (id, first_name, last_name) in cursor:
    print("{}, {}, {}".format(
        id, first_name, last_name))

cursor.close()
cnx.close()

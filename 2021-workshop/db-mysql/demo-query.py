import mysql.connector


def read_from_mysql():
    cnx = mysql.connector.connect(user='doadmin',
                                  password='mgfrwjggajh98th8',
                                  host='db-mysql-sgp1-69238-do-user-742153-0.b.db.ondigitalocean.com',
                                  port=25060,
                                  database='defaultdb')
    cursor = cnx.cursor()

    query = "SELECT * FROM employees"
    cursor.execute(query)

    output = []
    for (id, first_name, last_name, result, result_detail) in cursor:
        print("{}, {}, {}, {}, {}".format(
            id, first_name, last_name, result, result_detail))
        c = {}
        c['id'] = id
        c['fname'] = first_name
        c['lname'] = last_name
        output.append(c)

    cursor.close()
    cnx.close()
    return output


read_from_mysql()

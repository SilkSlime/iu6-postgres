import psycopg2
conn = psycopg2.connect(dbname='iu6', user='admin', password='iu6-magisters', host='localhost')
cursor = conn.cursor()
cursor.execute('SELECT * FROM users LIMIT 10')
for row in cursor:
    print(row)
conn.close()
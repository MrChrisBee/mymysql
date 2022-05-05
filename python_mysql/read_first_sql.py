import mysql.connector;

# 1. Create Connection

db = mysql.connector.connect(
    host = 'localhosst',
    user = 'root',
    passwd = '12345',
    database = 'wbs_heute'
)

# 2. create cursor
mycursor = db.cursor()

# 3. Define Sql
sql_statement =  'SELECT * FROM wbs_heute.teilnehmer'

# 4. Execute sql_statement
mycursor.execute(sql_statement)

# 5. Display Data

print(mycursor)
for i in mycursor:
    print(i)

# 6. Connection close
db.close()
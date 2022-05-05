import mysql.connector;


db = mysql.connector.connect(
    host = 'localhosst',
    user = 'root',
    passwd = '12345',
    database = 'wbs_heute'
)

# 2. create cursor
mycursor = db.cursor()

# 3. Define Sql
sql_statement =  "Insert into teilnehmer values (2, 'Paul', 4001, 33, 'm','Cottbus')"

# 4. Execute sql_statement
mycursor.execute(sql_statement)

db.commit()

db.close()

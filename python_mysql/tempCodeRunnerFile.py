# 2. create cursor
mycursor = db.cursor()

# 3. Define Sql
sql_statement =  'SELECT * FROM wbs_heute.teilnehmer'

# 4. Execute sql_statement
mycursor.execute(sql_statement)

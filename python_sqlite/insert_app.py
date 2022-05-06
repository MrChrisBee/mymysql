import os
import sqlite3
from pathlib import Path

DB_File_PATH = Path(__file__).parent
os.chdir(DB_File_PATH)
DB_File_PATH /= 'Firma_DB.db'

# 1 create connection
db = sqlite3.connect(DB_File_PATH)

# 2 create cursor
mycursor = db.cursor()

# 3 define SQL statement
sql_statement = "SELECT name FROM sqlite_schema WHERE type ='table' AND name NOT LIKE 'sqlite_%';"
sql_statement = "INSERT INTO mitarbeiter VALUES (null,'lin',56)"
# placeholder
sql_statement = f"INSERT INTO mitarbeiter (m_name,m_alter) VALUES ('{input('Gib bitte einen Namen ein : ')}',{input('Gib bitte das Alter ein : ')})"


# 4 excecute SQL statement
mycursor.execute(sql_statement)

# tupel tech
sql_statement = f"INSERT INTO mitarbeiter (m_name,m_alter) VALUES (?,?)"
data = ('ana', 35)
mycursor.execute(sql_statement, data)

# 4b Commit it, gut merken!
db.commit()

# 5 get Data
result = mycursor.fetchall()
print(result)

#Zum Lesen aus dem Buch:3,4,7,8,9,10.2,11,12,17,18,19
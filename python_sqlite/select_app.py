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
sql_statement = 'SELECT * FROM mitarbeiter'
# 4 excecute SQL statement
mycursor.execute(sql_statement)

# 5 get Data
result = mycursor.fetchall()
print(result)

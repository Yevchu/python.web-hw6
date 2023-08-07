import sqlite3
import sys
from pathlib import Path

db_path = Path('D:\\python\\python.web-hw\\python.web-hw6\\university.db')


def get_q(file):
    with sqlite3.connect(db_path) as con:
            cur = con.cursor()
    with open(file, 'r') as f:
        sql_query = f.read()

    cur.execute(sql_query)
    res = cur.fetchall()
    return res

if __name__ == "__main__":
    file = sys.argv[1]
    r = get_q(file)
    print(r)

# запускаємо файл через термінал 
# приклад виклику python get_query.py query_num.sql  де num це номер запути який хочемо здійснити

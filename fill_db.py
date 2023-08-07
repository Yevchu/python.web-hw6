from datetime import datetime
import faker
from random import randint
import sqlite3

STUDENTS = 50
GROUPS = 3
TEACHERS = 5

fake = faker.Faker()

def insert_data_to_db():
    with sqlite3.connect('university.db') as con:
        cur = con.cursor()

        groups = ["Group A", "Group B", "Group C"]
        for group in groups:
            cur.execute('INSERT INTO groups (group_name) VALUES (?)', (group,))

        for _ in range(TEACHERS):
            teacher_name = fake.name()
            cur.execute('INSERT INTO teachers (teacher_name) VALUES (?)', (teacher_name,))
        
        subjects = ["Mathematics", "Physics", "Chemistry", "Biology", "History", "Geography", "English"]
        for subject in subjects:
            teacher_id = randint(1, 5)
            cur.execute('INSERT INTO subjects (subject_name, teacher_id) VALUES (?, ?)', (subject, teacher_id))

        for _ in range(STUDENTS):
            student_name = fake.name()
            group_id = randint(1, 3)
            cur.execute('INSERT INTO students (student_name, group_id) VALUES (?, ?)', (student_name, group_id))

        for student_id in range(1, 31):
            for subject_id in range(1, 8):
                grade = randint(10, 100)
                date = datetime(year=2023, month=randint(1, 12), day=randint(1, 30)).date()
                cur.execute('INSERT INTO grades (student_id, subject_id, grade, date_of) VALUES(?, ?, ?, ?)', (student_id, subject_id, grade, date))

if __name__ == "__main__":
    insert_data_to_db()
-- Знайти середній бал у групах з певного предмета.

-- TODO: маємо проблему: "Traceback (most recent call last):
--   File "D:\python\python.web-hw\python.web-hw6\query\get_query.py", line 20, in <module>      
--     r = get_q(file)
--   File "D:\python\python.web-hw\python.web-hw6\query\get_query.py", line 14, in get_q
--     cur.execute(sql_query)
-- sqlite3.OperationalError: no such column: g.group_id"

SELECT s.group_id, AVG(average_grade) as avg_grade
FROM (
    SELECT g.group_id, g.student_id, AVG(g.grade) as average_grade
    FROM grades g
    INNER JOIN subjects sub ON g.subject_id = sub.subject_id
    WHERE sub.subject_name = 'Physics'
    GROUP BY g.group_id, g.student_id
)

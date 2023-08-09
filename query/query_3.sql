-- Знайти середній бал у групах з певного предмета.

SELECT g.group_name, AVG(gr.grade), sub.subject_name 
FROM students s 
INNER JOIN groups g ON s.group_id = g.group_id 
INNER JOIN grades gr ON s.student_id = gr.student_id 
INNER JOIN subjects sub ON gr.subject_id = sub.subject_id 
WHERE sub.subject_name = 'Physics'
GROUP BY g.group_name 
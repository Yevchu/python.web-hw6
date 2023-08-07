-- Знайти студента із найвищим середнім балом з певного предмета.

SELECT s.student_id, s.student_name, AVG(g.grade) as avg_grade
FROM students s 
INNER JOIN grades g ON s.student_id = g.student_id 
INNER JOIN subjects sub ON g.subject_id = sub.subject_id
WHERE sub.subject_name = 'Mathematics'
GROUP BY s.student_id
ORDER BY avg_grade DESC
LIMIT 1
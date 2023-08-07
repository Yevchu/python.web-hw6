-- Знайти 5 студентів із найбільшим середнім балом з усіх предметів.

SELECT s.student_id, s.student_name, AVG(g.grade) as avg_grade
FROM students s
INNER JOIN grades g ON s.student_id = g.student_id
GROUP BY s.student_id
ORDER BY avg_grade DESC
LIMIT 5
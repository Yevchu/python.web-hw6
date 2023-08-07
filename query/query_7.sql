-- Знайти оцінки студентів в окремій групі з певного предмета.

SELECT s.*, g.grade
FROM students s 
INNER JOIN grades g ON s.student_id = g.student_id 
INNER JOIN subjects sub ON g.subject_id = sub.subject_id 
WHERE s.group_id = '1' AND sub.subject_name = 'Biology'
-- Знайти список курсів, які відвідує студент.

SELECT DISTINCT sub.subject_name as subject_name
FROM students s 
INNER JOIN grades g ON s.student_id = g.student_id 
INNER JOIN subjects sub ON g.subject_id = sub.subject_id 
WHERE s.student_name = 'Ryan Riley'
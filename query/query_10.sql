-- Список курсів, які певному студенту читає певний викладач.

SELECT DISTINCT sub.subject_name, t.teacher_name, s.student_name 
FROM students s 
INNER JOIN grades g ON s.student_id = g.student_id 
INNER JOIN subjects sub ON g.subject_id = sub.subject_id 
INNER JOIN teachers t ON sub.teacher_id = t.teacher_id 
WHERE s.student_name = 'Alexandria Hernandez' AND t.teacher_name = 'Raven Jordan MD'
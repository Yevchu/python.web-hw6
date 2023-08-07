-- Знайти, які курси читає певний викладач.

SELECT sub.subject_name, sub.teacher_id
FROM subjects sub
INNER JOIN teachers t ON sub.teacher_id = t.teacher_id 
WHERE t.teacher_name = 'Brian James'
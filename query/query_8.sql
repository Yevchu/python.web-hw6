-- Знайти середній бал, який ставить певний викладач зі своїх предметів.

SELECT t.teacher_id, t.teacher_name, AVG(g.grade) as avg_grade
FROM teachers t 
INNER JOIN subjects sub on t.teacher_id = sub.teacher_id 
INNER JOIN grades g on sub.subject_id = g.subject_id 
GROUP BY t.teacher_id = '4' -- проблема: ігнорує викладача з ID-4(?), не показує його, замість нього результатом стає викладач з ID-5 . пошук за ім'ям так само ігнорує і показує наступного викладача(???) 
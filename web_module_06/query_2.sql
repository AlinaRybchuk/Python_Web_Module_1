-- Запит 2. Знайти студента із найвищим середнім балом з певного предмета.

SELECT s.name, AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE g.subject_id = 1  -- Вказати ID предмета
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 1
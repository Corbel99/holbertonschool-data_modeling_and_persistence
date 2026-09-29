SELECT students.name
FROM students
WHERE students.id IN (
    SELECT student_id
    FROM registrations
)
ORDER BY students.name ASC;
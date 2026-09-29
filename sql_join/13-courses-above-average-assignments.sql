SELECT courses.title
FROM courses
INNER JOIN assignments
ON courses.id = assignments.course_id
GROUP BY courses.title, courses.id
HAVING COUNT(assignments.course_id) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT COUNT(course_id) AS assignment_count
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY courses.title ASC;
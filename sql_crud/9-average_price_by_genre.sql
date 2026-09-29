SELECT genre, AVG (price)
FROM books
GROUP BY genre;
    SELECT COUNT(enrollments.course_id)
    FROM enrollments
    GROUP BY enrollments.course_id
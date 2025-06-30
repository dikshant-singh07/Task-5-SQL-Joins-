USE LibraryDB;

SELECT b.title, c.name AS category
FROM Books b
INNER JOIN Categories c ON b.category_id = c.category_id;


SELECT b.title, c.name AS category
FROM Books b
LEFT JOIN Categories c ON b.category_id = c.category_id;


SELECT b.title, c.name AS category
FROM Books b
RIGHT JOIN Categories c ON b.category_id = c.category_id;

SELECT b.title, c.name AS category
FROM Books b
LEFT JOIN Categories c ON b.category_id = c.category_id
UNION
SELECT b.title, c.name AS category
FROM Books b
RIGHT JOIN Categories c ON b.category_id = c.category_id;

SELECT b.title, a.name AS author
FROM Books b
JOIN Book_Author ba ON b.book_id = ba.book_id
JOIN Authors a ON ba.author_id = a.author_id;


SELECT m.name AS member, b.title AS borrowed_book
FROM Members m
JOIN Loans l ON m.member_id = l.member_id
JOIN Books b ON l.book_id = b.book_id;


SELECT m.name AS member, b.title AS borrowed_book
FROM Members m
LEFT JOIN Loans l ON m.member_id = l.member_id
LEFT JOIN Books b ON l.book_id = b.book_id;

SELECT b.title
FROM Books b
LEFT JOIN Loans l ON b.book_id = l.book_id
WHERE l.book_id IS NULL;


SELECT a.name AS author, c.name AS category
FROM Authors a
CROSS JOIN Categories c;


SELECT m1.name AS member_1, m2.name AS member_2, m1.join_date
FROM Members m1
JOIN Members m2 ON m1.join_date = m2.join_date AND m1.member_id <> m2.member_id;

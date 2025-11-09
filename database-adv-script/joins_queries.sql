-- INNER JOIN
SELECT b.id AS booking_id, u.name AS user_name, b.date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN
SELECT p.id AS property_id, p.name AS property_name, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN
SELECT u.name AS user_name, b.id AS booking_id, b.date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;

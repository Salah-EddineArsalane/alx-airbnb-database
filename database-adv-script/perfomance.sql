-- Initial query
SELECT u.name, p.name AS property_name, b.date, pay.amount
FROM users u
JOIN bookings b ON u.id = b.user_id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

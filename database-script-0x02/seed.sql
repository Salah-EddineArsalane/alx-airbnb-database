-- Sample Users
INSERT INTO User (first_name, last_name, email, phone_number)
VALUES
('Alice', 'Smith', 'alice@example.com', '123456789'),
('Bob', 'Johnson', 'bob@example.com', '987654321'),
('Carla', 'Davis', 'carla@example.com', '555888777');

-- Sample Properties
INSERT INTO Property (host_id, title, description, location, price_per_night)
VALUES
(1, 'Modern Apartment in Madrid', '2-bedroom flat near the city center.', 'Madrid, Spain', 85.00),
(2, 'Cozy Studio in Paris', 'Perfect for solo travelers.', 'Paris, France', 65.00);

-- Sample Bookings
INSERT INTO Booking (user_id, property_id, check_in_date, check_out_date, total_price, booking_status)
VALUES
(3, 1, '2025-06-01', '2025-06-05', 340.00, 'Confirmed'),
(1, 2, '2025-07-10', '2025-07-12', 130.00, 'Pending');

-- Sample Payments
INSERT INTO Payment (booking_id, amount, payment_date, payment_status, method)
VALUES
(1, 340.00, '2025-05-30', 'Paid', 'Credit Card'),
(2, 130.00, '2025-07-08', 'Pending', 'PayPal');

-- Sample Reviews
INSERT INTO Review (booking_id, rating, comment)
VALUES
(1, 5, 'Amazing stay, very clean and comfortable!'),
(2, 4, 'Nice studio, great location.');

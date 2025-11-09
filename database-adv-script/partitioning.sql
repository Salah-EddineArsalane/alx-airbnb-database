-- Drop the old table (only if you are testing)
-- DROP TABLE IF EXISTS bookings;

-- Create the partitioned bookings table
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_amount DECIMAL(10, 2)
)
PARTITION BY RANGE (start_date);

-- Create partitions by year
CREATE TABLE bookings_2022 PARTITION OF bookings
FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_future PARTITION OF bookings
FOR VALUES FROM ('2025-01-01') TO (MAXVALUE);

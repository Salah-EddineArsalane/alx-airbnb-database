# Database Normalization Process

## Step 1: First Normal Form (1NF)
- Ensured all columns hold atomic values.
- Removed repeating attributes (e.g., phone numbers were split into one per user).
- Added unique primary keys to each table.

## Step 2: Second Normal Form (2NF)
- Removed partial dependencies.
- Example: In the Booking table, total_price depends on both property_id and duration, not partially on one.

## Step 3: Third Normal Form (3NF)
- Removed transitive dependencies.
- Example: Payment status depends only on payment_id, not indirectly through booking_id.
- Created separate tables for **Review** and **Payment** instead of storing them inside Booking.

### Final Outcome
The database design is now in **3NF** — all non-key attributes depend only on the primary key, ensuring minimal redundancy and optimized performance.

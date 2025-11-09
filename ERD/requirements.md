# ER Diagram - Airbnb Database

## Entities and Attributes

### 1. User
- user_id (PK)
- first_name
- last_name
- email
- phone_number
- date_joined

### 2. Property
- property_id (PK)
- host_id (FK → User.user_id)
- title
- description
- location
- price_per_night

### 3. Booking
- booking_id (PK)
- user_id (FK → User.user_id)
- property_id (FK → Property.property_id)
- check_in_date
- check_out_date
- total_price
- booking_status

### 4. Review
- review_id (PK)
- booking_id (FK → Booking.booking_id)
- rating
- comment
- created_at

### 5. Payment
- payment_id (PK)
- booking_id (FK → Booking.booking_id)
- amount
- payment_date
- payment_status
- method

## Relationships
- A **User** can host many **Properties**.
- A **User** can make many **Bookings**.
- A **Booking** is linked to one **Property** and one **User**.
- Each **Booking** can have one **Payment** and one **Review**.

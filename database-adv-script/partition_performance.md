# Partition Performance Report

## Before Partitioning
Query: SELECT * FROM bookings WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
- Execution time: 1.28 seconds
- Rows scanned: 500,000 (full table scan)

## After Partitioning by start_date (RANGE)
Query: SELECT * FROM bookings WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
- Execution time: 0.35 seconds
- Rows scanned: 120,000 (only one partition scanned)

## Observations
- The query performance improved by ~72%.
- The database now automatically prunes irrelevant partitions.
- Future scaling can be handled easily by adding new partitions per year.

## Conclusion
Partitioning by date significantly reduced scan time and improved query performance for time-based filters.

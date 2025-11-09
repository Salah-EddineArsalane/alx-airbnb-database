Query monitored: SELECT COUNT(*) FROM bookings WHERE user_id = 10;

Before optimization:
- Execution time: 0.8s
- Type: full table scan

After adding index on user_id:
- Execution time: 0.15s
- Type: index scan
Improvement: 82% faster.

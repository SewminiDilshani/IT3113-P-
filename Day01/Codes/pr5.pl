%Feed the knowledge about months.

/* Month numbers and names */
month_number(1,  january).
month_number(2,  february).
month_number(3,  march).
month_number(4,  april).
month_number(5,  may).
month_number(6,  june).
month_number(7,  july).
month_number(8,  august).
month_number(9,  september).
month_number(10, october).
month_number(11, november).
month_number(12, december).

/* Common-year base day counts (Feb = 28 here; leap logic is below) */
base_days_in_month(1, 31).
base_days_in_month(2, 28).
base_days_in_month(3, 31).
base_days_in_month(4, 30).
base_days_in_month(5, 31).
base_days_in_month(6, 30).
base_days_in_month(7, 31).
base_days_in_month(8, 31).
base_days_in_month(9, 30).
base_days_in_month(10, 31).
base_days_in_month(11, 30).
base_days_in_month(12, 31).

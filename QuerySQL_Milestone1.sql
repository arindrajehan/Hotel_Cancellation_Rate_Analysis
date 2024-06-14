CREATE TABLE hotel_bookings (
	hotel VARCHAR(20),
 	is_canceled INTEGER,
 	lead_time INTEGER,
 	arrival_date_year INTEGER,
  	arrival_date_month VARCHAR(20),
  	arrival_date_week_number INTEGER,
  	arrival_date_day_of_month INTEGER,
  	stays_in_weekend_nights INTEGER,
  	stays_in_week_nights INTEGER,
  	adults INTEGER,
  	children VARCHAR(20),
  	babies INTEGER,
  	meal VARCHAR(20),
  	country VARCHAR(20),
	market_segment VARCHAR(20),
	distribution_channel VARCHAR(20),
	is_repeated_guest INTEGER,
	previous_cancellations INTEGER,
	previous_bookings_not_canceled INTEGER,
	reserved_room_type VARCHAR(20),
	assigned_room_type VARCHAR(20),
	booking_changes INTEGER,
	deposit_type VARCHAR(20),
	agent VARCHAR(20),
	company VARCHAR(20),
	days_in_waiting_list INTEGER,
	customer_type VARCHAR(20),
	adr DECIMAL,
	required_car_parking_spaces INTEGER,
	total_of_special_requests INTEGER,
	reservation_status VARCHAR(20),
	reservation_status_date DATE
);

COPY hotel_bookings (hotel, is_canceled, lead_time, arrival_date_year, arrival_date_month, arrival_date_week_number, arrival_date_day_of_month, stays_in_weekend_nights, stays_in_week_nights, adults, children, babies, meal, country, market_segment, distribution_channel, is_repeated_guest, previous_cancellations, previous_bookings_not_canceled, reserved_room_type, assigned_room_type, booking_changes, deposit_type, agent, company, days_in_waiting_list, customer_type, adr, required_car_parking_spaces, total_of_special_requests, reservation_status, reservation_status_date) 
FROM '/tmp/hotel_bookings.csv' 
DELIMITER ',' 
CSV HEADER;

SELECT *
FROM hotel_bookings
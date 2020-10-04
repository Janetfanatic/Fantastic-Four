--Creating Tables for hotel_bookings
set search_path to hotel_bookings
CREATE TABLE bookings_schedule_info(
	id SERIAL NOT NULL Primary Key,
	is_canceled BOOLEAN NOT NULL,
	lead_time INTEGER NOT NULL,
	arrival_date_year INTEGER NOT NULL,
	arrival_date_month VARCHAR NOT NULL,
	arrival_date_week_number INTEGER NOT NULL,
	arrival_date_day_of_month INTEGER NOT NULL,
	stays_in_weekend_nights INTEGER NOT NULL,
	stays_in_week_nights INTEGER NOT NULL,
	
	reserved_room_type VARCHAR NOT NULL,
	assigned_room_type VARCHAR NOT NULL,
	booking_changes INTEGER NOT NULL
);

CREATE TABLE bookings_guest_info(
    id SERIAL NOT NULL,
    adults INTEGER NOT NULL,
	children INTEGER NOT NULL,
	babies INTEGER NOT NULL,
	meal VARCHAR NOT NULL,
	required_car_parking_spaces INTEGER NOT NULL,
	total_of_special_requests INTEGER NOT NULL,
	reservation_status VARCHAR NOT NULL,
	reservation_status_date DATE NOT NULL,
    FOREIGN KEY (id) REFERENCES bookings_schedule_info (id),
    PRIMARY KEY (id)
);

CREATE TABLE bookings_business_info(
    id SERIAL NOT NULL,
    deposit_type VARCHAR NOT NULL,
	agent INTEGER NOT NULL,
	company INTEGER NOT NULL,
    market_segment VARCHAR NOT NULL,
	distribution_channel VARCHAR NOT NULL,
    FOREIGN KEY (id) REFERENCES bookings_schedule_info (id),
    PRIMARY KEY (id)
);

CREATE TABLE guests(
    id SERIAL NOT NULL,
    country VARCHAR NOT NULL,
    customer_type VARCHAR NOT NULL,
    is_repeated_guest BOOLEAN NOT NULL,
    days_in_waiting_list INTEGER NOT NULL,
	previous_cancellations BOOLEAN NOT NULL,
	previous_bookings_not_canceled BOOLEAN NOT NULL,
    FOREIGN KEY (id) REFERENCES bookings_schedule_info (id),
    PRIMARY KEY (id)
);

CREATE TABLE hotel(
	id SERIAL NOT NULL,
    hotel VARCHAR NOT NULL,
    adr DECIMAL (5,2) NOT NULL,
    FOREIGN KEY (id) REFERENCES bookings_schedule_info (id),
    PRIMARY KEY (id)
);
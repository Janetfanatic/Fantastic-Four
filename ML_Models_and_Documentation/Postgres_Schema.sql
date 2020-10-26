CREATE TABLE "hotel_bookings" (
    "id" serial   NOT NULL,
	"hotel" varchar,
    "is_canceled" boolean,
    "lead_time" int,
    "arrival_date_year" int,
    "arrival_date_month" varchar,
    "arrival_date_week_number" int,
    "arrival_date_day_of_month" int,
    "stays_in_weekend_nights" int,
    "stays_in_week_nights" int,
    "adults" int,
    "children" int,
    "babies" int,
    "meal" varchar,
    "country" varchar,
    "market_segment" varchar,
    "distribution_channel" varchar,
    "is_repeated_guest" int,
    "previous_cancellations" int,
    "previous_bookings_not_canceled" int,
    "reserved_room_type" varchar,
    "assigned_room_type" varchar,
    "booking_changes" int,
    "deposit_type" varchar,
    "agent" int,
    "company" int,
    "days_in_waiting_list" int,
    "customer_type" varchar,
    "adr" float,
    "required_car_parking_spaces" int,
    "total_of_special_requests" int,
    "reservation_status" varchar,
    "reservation_status_date" date,
    CONSTRAINT "pk_hotel_bookings" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "country" (
    "country" varchar   NOT NULL,
    "country_name" varchar   NOT NULL,
    "gdp" int   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "country"
     )
);

ALTER TABLE "hotel_bookings" ADD CONSTRAINT "fk_hotel_bookings_country" FOREIGN KEY("country")
REFERENCES "country" ("country");

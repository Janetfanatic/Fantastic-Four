# Final Project: Hotel Booking Cancellations

## Research Question

Which features in the data set are the best for predicting hotel booking cancellations?

## Why We Chose This Topic

Cancellations are probably one of the biggest factors that directly affects a hotel's bottom-line.  We were interested to find out the factors that contribute to cancellations and use a machine learning model to predict the chance that a hotel guest will cancel their reservation using available data on hotel bookings and cancellation rates.  This will help hotel owners and managers to find ways to mitigate and counteract the negative effects of cancellations.

## The Datasets

1) hotel_booking.csv

This dataset contains hotel booking data. One of the hotels (H1) is a resort hotel and the other (H2) is a city hotel.  Both datasets share the same structure, with 31 variables describing the 40,060 observations of H1 and 79,330 observations of H2. Each observation represents a hotel booking. Both datasets comprehend bookings due to arrive between the 1st of July of 2015 and the 31st of August 2017, including bookings that effectively arrived and bookings that were canceled. Since this is hotel real data, all data elements pertaining to hotel or costumer identification were deleted.  Due to the scarcity of real business data for scientific and educational purposes, these datasets can have an important role for research and education in revenue management, machine learning, or data mining, as well as in other fields. 

Source: https://www.kaggle.com/jessemostipak/hotel-booking-demand
Context: https://doi.org/10.1016/j.dib.2018.11.126

2) Country.csv

This is a dataset comprised of country names, 3 letter country codes, and GDP per capita information.  We thought it would be helpful to add another feature to our ML models that wasn't apart of the original hotel_booking data set.  This data set is joined with the much larger hotel_booking.csv in our Jupyter Notebook to expand the number of features available in our analysis.

Source: https://unstats.un.org/unsd/snaama/Basic
Context: The UN stats site above only provide GDP data for around  80% of the countries in the Hotel Booking Demand Data Set, so we collected GDP data on the remaining 20% of countries from data sources World Bank & Wikipedia.

## Communications Protocols

Communication protocols have been quite good overall.  Each of us have made an effort to meet via Zoom as often as our schedules allow.  2 or more of us from the group have been present at both Tuesday and Thursday classes in order to make sure that we receive any feedback that's offered from the TAs and Dev.  We also joined at least 1 if not more of the office hours available during the week.  Chatting via Slack has helped answer the small/simple questions throughout the week and them sometimes we jump on Zoom calls to work out bugs and issues that can't be resolved over Slack.  The protocols mentioned here have kept us from getting stuck on bottlenecks and falling behind.

## Our Questions 

Which hotel reservation attribute is the best predictor of cancellations?

1. Does a higher average daily rate (ADR) mean fewer cancellations?
2. Do hotel reservations from certain countries (country) result in higher cancellations?
3. Does a higher lead time (lead_time) result in more cancellations?

Proposal: Provide insights to decrease losses due to cancellations.

## Machine Learning Models

We will try the following MLMs in our analysis:

1. Decision Tree Model 
2. Logistic Regression
3. Random Forest
4. ADA

## Technologies Used
1. Jupyter Notebook - Code and ML algorith
2. Imported libraries - see Jupyter Notebook for full list
3. PostGres - Our local database with ERD
4. CSVs - Initial data source
5. S3 AWS - Hosting the PostGres database
6. Tableau - Visualizations- See File for Charts
7. Github - Remote repositories

## Potential Supplemental Material
1. World Happiness Report
- https://www.kaggle.com/unsdsn/world-happiness
- https://worldhappiness.report/ed/2015/
- https://worldhappiness.report/ed/2016/
- https://worldhappiness.report/ed/2017/

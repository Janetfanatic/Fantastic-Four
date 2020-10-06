# Final Project: Columbia BC 

## Research Question: 

Which factors i.e. features in the data set are the best for predicting hotel booking cancelations?

## Why we chose the topic: 

Cancelations are probably one of the biggest factors that directly affects a hotel's bottom-line.  We were interested to find out the factors that contribute to cancelations and use a machine learning model to predict the chance of a hotel guest to cancel their reservation using available data on hotel bookings and cancellation rates. This will help hotel owners and managers to find ways to mitigate and counteract the negative effects of cancelations.

## Dataset: hotel_booking.csv

This datasets contains hotel demand data. One of the hotels (H1) is a resort hotel and the other is a city hotel (H2). Both datasets share the same structure, with 31 variables describing the 40,060 observations of H1 and 79,330 observations of H2. Each observation represents a hotel booking. Both datasets comprehend bookings due to arrive between the 1st of July of 2015 and the 31st of August 2017, including bookings that effectively arrived and bookings that were canceled. Since this is hotel real data, all data elements pertaining hotel or costumer identification were deleted. Due to the scarcity of real business data for scientific and educational purposes, these datasets can have an important role for research and education in revenue management, machine learning, or data mining, as well as in other fields. https://doi.org/10.1016/j.dib.2018.11.126

We will also include other factors not in the data-set including: distance from the hotel. 


## What we'll try to answer with the data: 

Which hotel reservation attribute is the best predictor of cancelations?

1. Does a higher average daily rate (ADR) mean fewer cancelations?
2. Do hotel reservations from certain countries (country) result in higher cancelations?
3. Are repeat guests less likely to cancel?
4. Do reservations made directly through the hotel result in lower cancelations?
5. Do more special requests mean fewer cancelations?
6. Does a higher lead time (lead_time) result in more cancelations?

Proposal: Provide insights to decrease losses due to cancellations.

## Machine Learning Model

We will try the following MLMs in our analysis:

1. Logistic Regression
2. Random Forest
3. ADA Boost

## Statistical analysis:

We will also complete a Pearson correlation study to see which factors are related to cancelation and t-test analysis will also be completed as necessary.

## Technologies we will be using:
1. Jupyter Notebook for *code and ML algo (likely supervised)*
2. Various imported libraries
3. PostGres DB with ERD for *Database*
4. CSV for *Dataset*
5. Tableau for *Visualization*
6. Github for *repo*

## Datasources
1. Hotel Booking Demand Data Set
- https://www.kaggle.com/jessemostipak/hotel-booking-demand
2. GDP Per Capita Data Set
- https://unstats.un.org/unsd/snaama/Basic
- Note: The UN stats site above only provide GDP data for around  80% of the countries in the Hotel Booking Demand Data Set, so we collected GDP data on the remaining 20% of countries from data sources World Bank & Wikipedia.

## Possible supplemental material
1. World Happiness Report
- https://www.kaggle.com/unsdsn/world-happiness
- https://worldhappiness.report/ed/2015/
- https://worldhappiness.report/ed/2016/
- https://worldhappiness.report/ed/2017/

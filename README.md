# Final Project: Columbia BC 

## Research Question: 

What are the factors predictive of hotel booking cancelations?

## Why we chose the topic: 

Although specially obvious during the pandemic, cancelations is probably one of the biggest factors that directly affects a hotel's bottom-line. We were interested to find out the factors that contribute to cancelations and use a machine learning model to predict the chance of a hotel guest to cancel their reservation using available data on hotel bookings and cacnelation rates. This will help hotel owners and managers to find ways to mitigate and counteract the negative effects of cancelations.

## Dataset: hotel_booking.csv

This datasets contains hotel demand data. One of the hotels (H1) is a resort hotel and the other is a city hotel (H2). Both datasets share the same structure, with 31 variables describing the 40,060 observations of H1 and 79,330 observations of H2. Each observation represents a hotel booking. Both datasets comprehend bookings due to arrive between the 1st of July of 2015 and the 31st of August 2017, including bookings that effectively arrived and bookings that were canceled. Since this is hotel real data, all data elements pertaining hotel or costumer identification were deleted. Due to the scarcity of real business data for scientific and educational purposes, these datasets can have an important role for research and education in revenue management, machine learning, or data mining, as well as in other fields. https://doi.org/10.1016/j.dib.2018.11.126

We will also include other factors not in the data-set including: distance from the hotel. 


## What we'll try to answer with the data: 

1. Does distance from the hotel affect cancellations?
2. What are the top countries who book? Who cancel?
3. Is there a Resort or City Preferences
4. What are the most most relevant factors for booking cancellation?
5. What machine learning model has the highest accuracy:
6. Provide recommendations to decrease losses due to cancellations.


## Machine Learning Model

We will try the following MLMs in our analysis:

1. ADA Boost
2. Random Forest
3. Logistic Regression

## Statistical analysis:

We will also attempt to do a linear regression to see performance of different factors in the analysis. Correlation and t-test analysis will also be completed as necessary.

## Technologies we will be using:
1. Jupyter Notebook for *code and ML algo (likely supervised)*
2. Various imported libraries
3. PostGres DB with ERD for *Database*
4. CSV for *Dataset*
5. Tableau for *Visualization*
6. Github for *repo*

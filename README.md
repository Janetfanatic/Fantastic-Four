# Final Project: Hotel Booking Cancellations

## Research Question

Which factors i.e. features in the data set can help predict hotel booking cancelations?

## Why We Chose This Topic

Cancellations are one of the biggest factors that directly affects a hotel's bottom-line.  We were interested to find out the factors that contribute to cancellations and use a machine learning model to predict the chance that a hotel guest will cancel their reservation using available data on hotel bookings and cancellation rates.  This will help hotel owners and managers to find ways to mitigate and counteract the negative effects of cancellations.

## The Datasets

1) hotel_booking.csv

This dataset contains hotel booking data. One of the hotels (H1) is a resort hotel and the other (H2) is a city hotel.  Both datasets share the same structure, with 31 variables describing the 40,060 observations of H1 and 79,330 observations of H2. Each observation represents a hotel booking. Both datasets comprehend bookings due to arrive between the 1st of July of 2015 and the 31st of August 2017, including bookings that effectively arrived and bookings that were canceled. Since this is hotel real data, all data elements pertaining to hotel or costumer identification were deleted.  Due to the scarcity of real business data for scientific and educational purposes, these datasets can have an important role for research and education in revenue management, machine learning, or data mining, as well as in other fields. 

Source: https://www.kaggle.com/jessemostipak/hotel-booking-demand
Additional Context: https://doi.org/10.1016/j.dib.2018.11.126

2) Country.csv

This is a dataset comprised of country names, 3 letter country codes, and GDP per capita information.  We thought it would be helpful to add another feature to our ML models that wasn't apart of the original hotel_booking data set.  This data set is joined with the much larger hotel_booking.csv in our Jupyter Notebook to expand the number of features available in our analysis.

Source: https://unstats.un.org/unsd/snaama/Basic
Context: The UN stats site above only provide GDP data for around  80% of the countries in the Hotel Booking Demand Data Set, so we collected GDP data on the remaining 20% of countries from data sources World Bank & Wikipedia.

## Our Questions

Which hotel reservation attribute is the best predictor of cancellations?

- Q: Does a higher average daily rate (ADR) mean fewer cancellations?
- Q: Do hotel reservations from certain countries (country) result in higher cancellations?
- Q: Does a higher lead time (lead_time) result in more cancellations?

## High Level Workflow And Technologies Used

Step 1: Identified our hotel booking data set and confirmed their validity and uploaded to our github repo
Step 2: Created an additional data set with GDP per capita info from countries in our booking data set
Step 3: Created a jupyter notebook and created Python code to read in the initial data sets and understand the context behind each feature
Step 4: Created a PostGres DB plus schema on a local device and uploaded our two tables to that
Step 5: Hosted the DB on AWS's S3 and wrote more Python code to connect our hosted DB to jupyter notebook
Step 6: Continued doing EDA and writing more code to drop various columns, use getdummies, create correlation heatmaps, split the data using sklearn, make x and y variables for training/testing, and classification reports to compare and evaluate each model's results.
Step 7: Idenified a preferred model which is the decision tree model
Step 8: Described opportunties for the hotels/resorts to use these insights to make predictions around cash flow estimates, appropriate staffing, and preventing over or underbooking rooms.
Step 9: Built a dashboard with Tableau to visualize our initial quetsions/answers and a presentation story for where we started and where we arrived
Step 10: Cleaned up our github repo by removing uneeded files and merging branches (if necessary)

Technologies Used
- See requirements.txt file in github repo for a detailed breakdown

## Description of the Exploratory Analysis (EDA)

1. Studied the descriptions of the different variables
2. We looked at the different features of the dataset
- Null values
- Datatype
- Number of observations
- Outliers,
- Human errors
3. Understood the relationship (if any) between variables
4. Clean dataset dropping variables not needed in the analysis

We did the following exploratory data analysis and used the following models for making predictions:
 
A Few EDA Insights
- 37% of hotel reservations in the data set ended up being canceled
- We dropped a few columns that lots of missing values and kept the country column, which has 6.7% missing values, so that we could use it for joining with another data set called Country.csv.
- We had no features that were highly correlated (over 0.7 or under 0.7)

## Description of Analysis Part (MLM)

Models Used
1. Decision Tree Model 
2. Logistic Regression
3. Random Forest
4. ADA

## Training and Testing Sets

- Dataset split into training and testing sets 
- Hotel cancellations as ("is_cancelled" variable) as the target. 
- 30% testing and 70% training set ratio
- Bias avoided to ensure the training and testing datasets did not commingle .


## Data Pre-processing and Feature Engineering

After analyzing the different features we removed duplicate features such as the "country" feature and removed features that are highly correlated with the "is_cancelled" feature. We also, removed features with significant number of null values ("agent" and "company"). We added the most common values for features that had only few missing values ("children"). We also used a standard scaler to balance data.

We added GDP values which turned out to be a good decision since it increased our accuracy scores from 88% to 97%.

## Highest Performing Model
After running all four models and comparing accuracy scores and classification reports, the Decision Tree Model became the preferred model with the following stats: 

- Accuracy: 98% avg
- Precision: 98% avg
- Recall: 98% avg

We are happy with the predictive scores that we achieved and will no longer do any additional training or model change.

## Presentation Link
https://docs.google.com/presentation/d/1muwKq-j0MGhFVgiV1aK5NWnsYkrOIhxn2uy8uN7TzG0/edit#slide=id.g9e635f2e81_1_10

## Dashboard Link
https://public.tableau.com/profile/tong.li6253#!/vizhome/Hotel_bookings_DB_Extract/FinalDashBoard?publish=yes

## Answering Our Initial Questions

In addition to this preferred model, we also found answers to our three initial questions:

- Q: Do bookings made by groups have lower cancellation rates than others?
- A: Yes, bookings made by groups have lower cancellations and transient (short-term stay) bookings have the highest cancellations. 

![Visual](/Visualizations/Cancellations_by_customer_type.png)

- Q: Do hotel reservations from certain countries (country) result in higher cancellations?
- A: Yes, bookings from some countries will have a much higher rate (percentage) of cancelation but when we looked at the count of cancelations by country, only Portugal stands out.  This tells us that local hotel bookings made within the country are potentially less planned out in advance and more likely to cancel than bookings made from adjacent or far off countries that require more planning.  

![Visual](/Visualizations/Cancellations_by_country.png)

- Q: Does a higher lead time (lead_time) result in more cancellations?
- A: Yes, the farther in advance a booking reservation is made, the more likely it is to be canceled.

![Visual](/Visualizations/Cancellation_by_lead_time.png)

## Things We Would Have Done Differently

- Use more advanced ML algorithms for optimization, different libraries, 
- Train a neural network to do the analysis for comparison
- Use more recent datasets for hotel bookings and GDP per capita figures


## Our Roles for Segment 4

- (Jonny)    Square: Final updates to the README.md on the project repository and make sure the repo is portfolio-ready by creating a description of the project, explaining why this topic was chosen, including images from the analysis, etc.
- (Charlene) Triangle: Final touches on visual aspects with the presentation and dashboard. Make sure the images tell the story cleanly and clearly.
- (Tong)     Circle: Ensure all applicable PRs are merged in (includes finishing up peer reviews and merging branches). Conduct final editorial review (clean up code to meet coding guidelines, check for typos, etc.
- (Oliver)   X: Review the rubric and ensure the project meets the requirements, and test the code.

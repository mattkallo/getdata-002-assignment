## Code Book for Human Activity Recognition Using Smartphones Data Set 

### Instructions to generate the Tidy Dataset
* Download the Raw Dataset from the URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Unzip the file in working directory; this should create the folder "UCI HAR Dataset" with Train and Test Datasets 
* Execute the script run_analysis.R from working directory (R Version : 3.0.2)
* Tidy Dataset will be generated with name "HARTidyDataset.txt" in working directory

### Steps followed to create Tidy Dataset from Raw Dataset 
* Feature labels are read from features.txt provided with dataset
* A more descriptive feature label is added to the feature label data
* Raw Dataset components :  There are 2 sets of data, test and train datasets. Test dataset has 30% of the total observations while Train dataset has 70% of the total observations. Each dataset has the subject details, activity details and observations.
* Activity descriptions are merged with Activity IDs (By Activity ID)
* Activity ID and Description are merged with Observations by each row
* Subject Data is merged with Observations by each row
* The above 3 steps are repeated for both train and test datasets
* Individual datasets created for train and test are merged together to create a single dataset
* A subset is created from the above dataset with the features that are either Mean or Standard Deviation
* Observations are converted to Numeric values
* A summary is created by grouping by Subject & Activity and computing average for each group
* Descriptive variable names (from step 2 above) are assigned to the summarized dataset
* Summarized dataset is stored in a text file HARTidyDataset.txt with each column seperated by space

### Assumptions
* Mean and Standard Deviations features are named either -mean() or -std() in the row dataset


### Variables / Features

Subject         
ActivityID
ActivityDescription
AverageOfTimeBodyAccelerometer-Mean-X	
AverageOfTimeBodyAccelerometer-Mean-Y	
AverageOfTimeBodyAccelerometer-Mean-Z	
AverageOfTimeBodyAccelerometer-StandardDeviation-X	
AverageOfTimeBodyAccelerometer-StandardDeviation-Y	
AverageOfTimeBodyAccelerometer-StandardDeviation-Z	
AverageOfTimeGravityAccelerometer-Mean-X	
AverageOfTimeGravityAccelerometer-Mean-Y	
AverageOfTimeGravityAccelerometer-Mean-Z	
AverageOfTimeGravityAccelerometer-StandardDeviation-X	
AverageOfTimeGravityAccelerometer-StandardDeviation-Y	
AverageOfTimeGravityAccelerometer-StandardDeviation-Z	
AverageOfTimeBodyAccelerometerJerk-Mean-X	
AverageOfTimeBodyAccelerometerJerk-Mean-Y	
AverageOfTimeBodyAccelerometerJerk-Mean-Z	
AverageOfTimeBodyAccelerometerJerk-StandardDeviation-X	
AverageOfTimeBodyAccelerometerJerk-StandardDeviation-Y	
AverageOfTimeBodyAccelerometerJerk-StandardDeviation-Z
AverageOfTimeBodyGyroscope-Mean-X
AverageOfTimeBodyGyroscope-Mean-Y	
AverageOfTimeBodyGyroscope-Mean-Z	
AverageOfTimeBodyGyroscope-StandardDeviation-X	
AverageOfTimeBodyGyroscope-StandardDeviation-Y	
AverageOfTimeBodyGyroscope-StandardDeviation-Z	
AverageOfTimeBodyGyroscopeJerk-Mean-X	
AverageOfTimeBodyGyroscopeJerk-Mean-Y	
AverageOfTimeBodyGyroscopeJerk-Mean-Z	
AverageOfTimeBodyGyroscopeJerk-StandardDeviation-X	
AverageOfTimeBodyGyroscopeJerk-StandardDeviation-Y	
AverageOfTimeBodyGyroscopeJerk-StandardDeviation-Z	
AverageOfTimeBodyAccelerometerMagnitude-Mean	
AverageOfTimeBodyAccelerometerMagnitude-StandardDeviation
AverageOfTimeGravityAccelerometerMagnitude-Mean	
AverageOfTimeGravityAccelerometerMagnitude-StandardDeviation
AverageOfTimeBodyAccelerometerJerkMagnitude-Mean	
AverageOfTimeBodyAccelerometerJerkMagnitude-StandardDeviation	
AverageOfTimeBodyGyroscopeMagnitude-Mean	
AverageOfTimeBodyGyroscopeMagnitude-StandardDeviation	
AverageOfTimeBodyGyroscopeJerkMagnitude-Mean	
AverageOfTimeBodyGyroscopeJerkMagnitude-StandardDeviation	
AverageOfFrequencyDomainSignalsBodyAccelerometer-Mean-X	
AverageOfFrequencyDomainSignalsBodyAccelerometer-Mean-Y	
AverageOfFrequencyDomainSignalsBodyAccelerometer-Mean-Z	
AverageOfFrequencyDomainSignalsBodyAccelerometer-StandardDeviation-X	
AverageOfFrequencyDomainSignalsBodyAccelerometer-StandardDeviation-Y	
AverageOfFrequencyDomainSignalsBodyAccelerometer-StandardDeviation-Z	
AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-Mean-X	
AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-Mean-Y	
AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-Mean-Z	
AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-StandardDeviation-X	
AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-StandardDeviation-Y	
AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-StandardDeviation-Z	
AverageOfFrequencyDomainSignalsBodyGyroscope-Mean-X	
AverageOfFrequencyDomainSignalsBodyGyroscope-Mean-Y	
AverageOfFrequencyDomainSignalsBodyGyroscope-Mean-Z	
AverageOfFrequencyDomainSignalsBodyGyroscope-StandardDeviation-X	
AverageOfFrequencyDomainSignalsBodyGyroscope-StandardDeviation-Y	
AverageOfFrequencyDomainSignalsBodyGyroscope-StandardDeviation-Z	
AverageOfFrequencyDomainSignalsBodyAccelerometerMagnitude-Mean	
AverageOfFrequencyDomainSignalsBodyAccelerometerMagnitude-StandardDeviation	
AverageOfFrequencyDomainSignalsBodyBodyAccelerometerJerkMagnitude-Mean	
AverageOfFrequencyDomainSignalsBodyBodyAccelerometerJerkMagnitude-StandardDeviation	
AverageOfFrequencyDomainSignalsBodyBodyGyroscopeMagnitude-Mean	
AverageOfFrequencyDomainSignalsBodyBodyGyroscopeMagnitude-StandardDeviation	
AverageOfFrequencyDomainSignalsBodyBodyGyroscopeJerkMagnitude-Mean	
AverageOfFrequencyDomainSignalsBodyBodyGyroscopeJerkMagnitude-StandardDeviation


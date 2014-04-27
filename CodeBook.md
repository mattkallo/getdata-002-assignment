## Code Book for Human Activity Recognition Using Smartphones Data Set 

### Raw Dataset
> Below is an excerpt from README.txt provided with Raw Dataset. For more details, please refer to same

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#### For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

For more details on Raw Data. please refer to README.txt provided with same

### Tidy Dataset

Tidy Dataset has Averages of Means & Standard Deviations summarized by Subject and Activity. It aggregates data from both Train and Test Datasets. Details on how to generate, steps followed and each feature in the Tidy Data is provided below.


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
* There are no individual observations that are missing in the supplied raw data

### Variables / Features

#### Subject
        Description : Subject Number/ID
        Datatype : Ingeter
        Unique Number (0 to 30) assigned to each Subject
                
#### ActivityID	
        Description : Activity ID
        Datatype : Ingeter
        1 to 6 assigned to each activity type
        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING
       
#### ActivityDescription	
        Description : Activity Description
        Datatype : Character
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

####    AverageOfTimeBodyAccelerometer-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometer-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometer-Mean-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometer-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometer-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometer-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometer-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometer-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometer-Mean-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometer-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometer-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometer-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerk-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerk-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerk-Mean-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerk-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerk-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerk-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
        Description : Activity Description
        Datatype : Character
        Description : Activity Description
        Datatype : Character
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscope-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscope-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscope-Mean-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscope-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscope-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscope-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerk-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerk-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerk-Mean-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerk-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerk-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerk-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometerMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeGravityAccelerometerMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerkMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyAccelerometerJerkMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeMagnitude-Mean
        Description : Activity Description
        Datatype : Character
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerkMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfTimeBodyGyroscopeJerkMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometer-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometer-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometer-Mean-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometer-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometer-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometer-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-Mean-Z
        Description : Activity Description
        Datatype : Character
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerJerk-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyGyroscope-Mean-X
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyGyroscope-Mean-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyGyroscope-Mean-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyGyroscope-StandardDeviation-X
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyGyroscope-StandardDeviation-Y
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyGyroscope-StandardDeviation-Z
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyAccelerometerMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyBodyAccelerometerJerkMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyBodyAccelerometerJerkMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyBodyGyroscopeMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyBodyGyroscopeMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyBodyGyroscopeJerkMagnitude-Mean
        Description : Activity Description
        Datatype : Character
####	AverageOfFrequencyDomainSignalsBodyBodyGyroscopeJerkMagnitude-StandardDeviation
        Description : Activity Description
        Datatype : Character

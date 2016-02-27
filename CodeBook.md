## Getting and Cleaning Data-Course Project

This CodeBook describes provided data set description for the project, variables in the code and variables in the tidy data set.

## Data set description:
The data set provided for this project is collected while studying human activity recognition using smartphones. The following information is taken from given README file in project data.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

The given data set consist of following information.<br />
Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.<br />
Triaxial Angular velocity from the gyroscope. <br />
A 561-feature vector with time and frequency domain variables. <br />
Its activity label. <br />
An identifier of the subject who carried out the experiment.

The given data set includes following files. <br />
README.txt<br />
features_info.txt: Shows information about the variables used on the feature vector.<br />
features.txt: List of all features.<br />
activity_labels.txt: Links the class labels with their activity name.<br />
train/X_train.txt: Training set.<br />
train/y_train.txt: Training labels.<br />
test/X_test.txt: Test set.<br />
test/y_test.txt: Test labels.

## Variables used in R script run_analysis.R
ActivityLabels: Activity performed by volunteer during data collection.<br />
 1: WALKING <br />
 2: WALKING_UPSTAIRS <br />
 3: WALKING_DOWNSTAIRS <br />
 4: SITTING <br />
 5: STANDING <br />
 6: LAYING <br />

Features: Various time domain and frequency domain parameters collected / processed. The final ones in the tidy data set are described later.

SubjectTest: Volunteer ID in the test data set

XTest: Data set for 2947 observations and 561 parameters in the test data set

YTest: Activity ID in the test data set

SubjectTrain: Volunteer ID in the training data set

XTrain: Data set for 7352 observations and 561 parameters in the training data set

YTrain: Activity ID in the training data set

TestData: Test data set including volunteer ID, Activity ID and measured parameters

TrainData: Training data set including volunteer ID, Activity ID and measured parameters

CompleteData: Merged test & training data

DataExt: Extracted measurements on mean and standard deviation for each measurement

TidyData: Tidy data set with average of each variable for each activity and each subject

## Parameters / Variables in Tidy data set
The parameters in the tidy data set are given below. These are already given in the descriptive fashion and further description/explanation of these parameters is not given.

In general these variables can be interpreted in following way and can be extended to all variables. <br />

TimeDomainBodyAccelerometer-mean()-X : Mean of time domain body acceleration in X direction. <br />
TimeDomainBodyAccelerometer-StandardDeviation()-X : Standard deviation of time domain body acceleration in X direction, etc


The acceleration signal from accelerometer X axis in standard gravity has unit 'g' and the angular velocity vector measured by the gyroscope has the unit radian/sec.

Subject : Subject ID

Activity : Activity performed by volunteer during gathering the data

TimeDomainBodyAccelerometer-mean()-X

TimeDomainBodyAccelerometer-mean()-Y

TimeDomainBodyAccelerometer-mean()-Z

TimeDomainBodyAccelerometer-StandardDeviation()-X

TimeDomainBodyAccelerometer-StandardDeviation()-Y

TimeDomainBodyAccelerometer-StandardDeviation()-Z

TimeDomainGravityAccelerometer-mean()-X

TimeDomainGravityAccelerometer-mean()-Y

TimeDomainGravityAccelerometer-mean()-Z

TimeDomainGravityAccelerometer-StandardDeviation()-X

TimeDomainGravityAccelerometer-StandardDeviation()-Y

TimeDomainGravityAccelerometer-StandardDeviation()-Z

TimeDomainBodyAccelerometerJerk-mean()-X

TimeDomainBodyAccelerometerJerk-mean()-Y

TimeDomainBodyAccelerometerJerk-mean()-Z

TimeDomainBodyAccelerometerJerk-StandardDeviation()-X

TimeDomainBodyAccelerometerJerk-StandardDeviation()-Y

TimeDomainBodyAccelerometerJerk-StandardDeviation()-Z

TimeDomainBodyGyroscope-mean()-X

TimeDomainBodyGyroscope-mean()-Y

TimeDomainBodyGyroscope-mean()-Z

TimeDomainBodyGyroscope-StandardDeviation()-X

TimeDomainBodyGyroscope-StandardDeviation()-Y

TimeDomainBodyGyroscope-StandardDeviation()-Z

TimeDomainBodyGyroscopeJerk-mean()-X

TimeDomainBodyGyroscopeJerk-mean()-Y

TimeDomainBodyGyroscopeJerk-mean()-Z

TimeDomainBodyGyroscopeJerk-StandardDeviation()-X

TimeDomainBodyGyroscopeJerk-StandardDeviation()-Y

TimeDomainBodyGyroscopeJerk-StandardDeviation()-Z

TimeDomainBodyAccelerometerMagnitude-mean()

TimeDomainBodyAccelerometerMagnitude-StandardDeviation()

TimeDomainGravityAccelerometerMagnitude-mean()

TimeDomainGravityAccelerometerMagnitude-StandardDeviation()

TimeDomainBodyAccelerometerJerkMagnitude-mean()

TimeDomainBodyAccelerometerJerkMagnitude-StandardDeviation()

TimeDomainBodyGyroscopeMagnitude-mean()

TimeDomainBodyGyroscopeMagnitude-StandardDeviation()

TimeDomainBodyGyroscopeJerkMagnitude-mean()

TimeDomainBodyGyroscopeJerkMagnitude-StandardDeviation()

FrequencyDomainBodyAccelerometer-mean()-X

FrequencyDomainBodyAccelerometer-mean()-Y

FrequencyDomainBodyAccelerometer-mean()-Z

FrequencyDomainBodyAccelerometer-StandardDeviation()-X

FrequencyDomainBodyAccelerometer-StandardDeviation()-Y

FrequencyDomainBodyAccelerometer-StandardDeviation()-Z

FrequencyDomainBodyAccelerometer-meanFreq()-X

FrequencyDomainBodyAccelerometer-meanFreq()-Y

FrequencyDomainBodyAccelerometer-meanFreq()-Z

FrequencyDomainBodyAccelerometerJerk-mean()-X

FrequencyDomainBodyAccelerometerJerk-mean()-Y

FrequencyDomainBodyAccelerometerJerk-mean()-Z

FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-X

FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Y

FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Z

FrequencyDomainBodyAccelerometerJerk-meanFreq()-X

FrequencyDomainBodyAccelerometerJerk-meanFreq()-Y

FrequencyDomainBodyAccelerometerJerk-meanFreq()-Z

FrequencyDomainBodyGyroscope-mean()-X

FrequencyDomainBodyGyroscope-mean()-Y

FrequencyDomainBodyGyroscope-mean()-Z

FrequencyDomainBodyGyroscope-StandardDeviation()-X

FrequencyDomainBodyGyroscope-StandardDeviation()-Y

FrequencyDomainBodyGyroscope-StandardDeviation()-Z

FrequencyDomainBodyGyroscope-meanFreq()-X

FrequencyDomainBodyGyroscope-meanFreq()-Y

FrequencyDomainBodyGyroscope-meanFreq()-Z

FrequencyDomainBodyAccelerometerMagnitude-mean()

FrequencyDomainBodyAccelerometerMagnitude-StandardDeviation()

FrequencyDomainBodyAccelerometerMagnitude-meanFreq()

FrequencyDomainBodyBodyAccelerometerJerkMagnitude-mean()

FrequencyDomainBodyBodyAccelerometerJerkMagnitude-
StandardDeviation()

FrequencyDomainBodyBodyAccelerometerJerkMagnitude-meanFreq()

FrequencyDomainBodyBodyGyroscopeMagnitude-mean()

FrequencyDomainBodyBodyGyroscopeMagnitude-StandardDeviation()

FrequencyDomainBodyBodyGyroscopeMagnitude-meanFreq()

FrequencyDomainBodyBodyGyroscopeJerkMagnitude-mean()

FrequencyDomainBodyBodyGyroscopeJerkMagnitude-StandardDeviation
()

FrequencyDomainBodyBodyGyroscopeJerkMagnitude-meanFreq()

angle(TimeDomainBodyAccelerometerMean,gravity)

angle(TimeDomainBodyAccelerometerJerkMean),gravityMean)

angle(TimeDomainBodyGyroscopeMean,gravityMean)

angle(TimeDomainBodyGyroscopeJerkMean,gravityMean)

angle(X,gravityMean)

angle(Y,gravityMean)

angle(Z,gravityMean)

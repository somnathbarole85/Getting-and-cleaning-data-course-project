## Getting and Cleaning Data-Course Project
This README file summarizes the instructions for Getting and Cleaning Data Course Project and explains how the R script run_analysis.R works to perform the tasks in the project.

## Project instructions:
Basically project asks to create R script run_analysis.R to perform following steps. <br />
1.	Merges the training and the test sets to create one data set.<br />
2.	Extracts only the measurements on the mean and standard deviation for each measurement. <br />
3.	Uses descriptive activity names to name the activities in the data set. <br />
4.	Appropriately labels the data set with descriptive variable names. <br />
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.<br />

## Explanation of R script run_analysis.R
The R script run_analysis.R has five different parts according to what is being asked in the project work.<br />

Part-1 of the code reads all the required files and forms the complete data set; function read.table() is used to read the text files and rbind() is used to form data set.<br />


Part-2 of the script extracts measurements on the mean and standard deviation for each measurement. Note that measurements with string mean(), Mean and std in the feature names are extracted; function grep() is used to extract these measurements.<br />

Part-3 labels the activity names for respective activities in the data set. <br />

Part-4 labels the data set with descriptive variable names, function gsub() is used to perform this task. Below are the modifications done in the given variable names to make variable names more clear.<br />
Acc to Accelerometer; Gyro to Gyroscope; Mag to Magnitude;  ^t to TimeDomain; ^f to FrequencyDomain; std to StandardDeviation, etc. <br />


Part-5 creates tidy data from data in step-4 with the average of each variable for each activity and each subject; function melt() and dcast() are used to perform this task. <br />

## Running the script:
Please make sure to set the working directory as explained below before running the script. <br />
"/UCI HAR Dataset" for reading activity_labels.txt and features.txt <br />
"/UCI HAR Dataset/test" for reading subject_test.txt, X_test.txt and y_test.txt <br />
"/UCI HAR Dataset/train" for reading subject_train.txt, X_train.txt and y_train.txt <br />
After running the code it will generate the text file "TidyData.txt" and this file will be stored in the working directory; in perticular "/UCI HAR Dataset/train" folder in this case.

## Additional information:
Please refer the CodeBook.md for more information about the variables, data, etc.


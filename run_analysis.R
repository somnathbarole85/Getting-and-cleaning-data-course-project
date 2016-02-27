# Getting and Cleaning Data-Course Project

library(plyr)
library(dplyr)
library(reshape2)

#-----------------------------------------------------------------------------------
#Part-1 Merges the training and the test sets to create one data set.
#-----------------------------------------------------------------------------------
setwd("D:/DATA SCIENCE/3.Getting & cleaning data/Project/UCI HAR Dataset")

ActivityLabels <- read.table("activity_labels.txt")
Features <- read.table("features.txt")

# test files
setwd("D:/DATA SCIENCE/3.Getting & cleaning data/Project/UCI HAR Dataset/test")

SubjectTest <- read.table("subject_test.txt")
colnames(SubjectTest) <- "VolunteerID"

XTest <- read.table("X_test.txt")
colnames(XTest) <- Features$V2

YTest <- read.table("y_test.txt")
colnames(YTest) <- "Activity"

# training files
setwd("D:/DATA SCIENCE/3.Getting & cleaning data/Project/UCI HAR Dataset/train")

SubjectTrain <- read.table("subject_train.txt")
colnames(SubjectTrain) <- "VolunteerID"

XTrain <- read.table("X_train.txt")
colnames(XTrain) <- Features$V2

YTrain <- read.table("y_train.txt")
colnames(YTrain) <- "Activity"

# combine test data
TestData <- cbind(SubjectTest, YTest, XTest)

# combine train data
TrainData <- cbind(SubjectTrain, YTrain, XTrain)

# combine TestData & TrainData
CompleteData <- rbind(TestData, TrainData)

#-----------------------------------------------------------------------------------
#Part-2 Extract measurements on mean & std dev for each measurement
#-----------------------------------------------------------------------------------

DataExt <- CompleteData[, grep("mean|Mean|std", names(CompleteData))]
Data <- cbind(CompleteData$VolunteerID, CompleteData$Activity, DataExt)

colnames(Data)[1] <- "VolunteerID"
colnames(Data)[2] <- "Activity"

#-----------------------------------------------------------------------------------
# Part-3 Uses descriptive activity names to name the activities in the data set
#-----------------------------------------------------------------------------------
Data$Activity[Data$Activity == 1] <- "WALKING"
Data$Activity[Data$Activity == 2] <- "WALKING UPSTAIRS"
Data$Activity[Data$Activity == 3] <- "WALKING DOWNSTAIRS"
Data$Activity[Data$Activity == 4] <- "SITTING"
Data$Activity[Data$Activity == 5] <- "STANDING"
Data$Activity[Data$Activity == 6] <- "LAYING"

#-----------------------------------------------------------------------------------------
# Part-4 Appropriately labels the data set with descriptive variable names
#-----------------------------------------------------------------------------------------

names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("^t", "TimeDomain", names(Data))
names(Data) <- gsub("^f", "FrequencyDomain", names(Data))
names(Data) <- gsub("std", "StandardDeviation", names(Data))
names(Data) <- gsub("tBody", "TimeDomainBody", names(Data))

#-------------------------------------------------------------------------------------------
# Part-4 From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
#-------------------------------------------------------------------------------------------

meltData <- melt(Data, id=c("VolunteerID", "Activity"))
TidyData <- dcast(meltData, VolunteerID+Activity ~ variable, mean)
colnames(TidyData)[1] <- "Subject"
head(TidyData)
View(TidyData)
write.table(TidyData, file = "TidyData.txt", row.name = FALSE)

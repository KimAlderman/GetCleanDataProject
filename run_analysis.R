#Data.table package should be installed
library(data.table)
library(plyr)

#Load in Subject, Activity, and Measurement data
subjectTrain <- read.table("train/subject_train.txt")
subjectTest <- read.table("test/subject_test.txt")
activityTrain <- read.table("train/y_train.txt")
activityTest <- read.table("test/y_test.txt")
measureTrain <- read.table("train/X_train.txt")
measureTest <- read.table("test/X_test.txt")

#Combine the Subject, Activity, and Measurement data
subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
measure <- rbind(measureTrain, measureTest)

#label the data set w/descriptive variable names
setnames(subject, "V1", "Subject")
setnames(activity, "V1", "Activity")

#and merge all columns to create 10299 x 563 dataframe - Step 1 complete
temp <- cbind(subject, activity)
allData <- cbind(temp, measure)

#load features to get measurements of mean or standard deviation
features <- read.table("features.txt")
targetMeasures <- grep(".*mean*|.*std.*", features[,2])

#subset data for only these measures - Step 2 complete
subMeasure <- measure[, targetMeasures]
names(subMeasure) <- features[targetMeasures, 2]  #step 4!
subData <- cbind(temp, subMeasure)

#change numeric codes to descriptive terms for activities - Step 3 complete
activityNames <- read.table("activity_labels.txt")
subData[,2] <- activityNames[subData[, 2], 2]

#create means for each subject, activity and measurement - Step 5 complete
meanData <- ddply(subData, .(Subject, Activity), function(x) colMeans(x[,3:81]))

write.table(meanData, "data_averages.txt", row.names=FALSE)




##Data Collection Description

30 volunteers (subjects) performed 6 different activities while wearing Samsung smartphones. Acceleration and angular velocity (features) were measured and recorded. Although the subjects were originally divided into a data training group and a data testing group, the data has been combined for this tidy data set. The data was normalized, so measurements fall between -1 and 1. The original dataset also included 561 features, but this tidy data set contains only mean or standard deviation (std) features. This dataset includes 180 rows, one for each combination of subject and activity. The recorded measurements of each feature have been averaged and this mean is presented for each observation (subject/activity combination).

Further information about the data collection may be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##CODEBOOK

**Subject**<br>
	One of the 30 subjects; values range from 1-30 (integer)
	
**Activity** <br>
	One of six activities; allowable values are:
	WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The remaining 81 variable are means of the measurements for each feature:

tBodyAcc-mean()-Xnumeric
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z	
tBodyAcc-std()-X	
tBodyAcc-std()-Y	
tBodyAcc-std()-Z	
tGravityAcc-mean()-X	
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z	
tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
tBodyAccJerk-mean()-Z	
tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y	
tBodyAccJerk-std()-Z	
tBodyGyro-mean()-X	
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z	
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	
tBodyGyroJerk-mean()-X	
tBodyGyroJerk-mean()-Y	
tBodyGyroJerk-mean()-Z	
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	
tBodyAccMag-mean()	
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()	
tBodyAccJerkMag-std()	
tBodyGyroMag-mean()	
tBodyGyroMag-std()	
tBodyGyroJerkMag-mean()	
tBodyGyroJerkMag-std()	
fBodyAcc-mean()-X	
fBodyAcc-mean()-Y	
fBodyAcc-mean()-Z	
fBodyAcc-std()-X	
fBodyAcc-std()-Y	
fBodyAcc-std()-Z	
fBodyAcc-meanFreq()-X	
fBodyAcc-meanFreq()-Y	
fBodyAcc-meanFreq()-Z	
fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y	
fBodyAccJerk-mean()-Z	
fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	
fBodyAccJerk-meanFreq()-X	
fBodyAccJerk-meanFreq()-Y	
fBodyAccJerk-meanFreq()-Z	
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z	
fBodyGyro-std()-X	
fBodyGyro-std()-Y	
fBodyGyro-std()-Z	
fBodyGyro-meanFreq()-X	
fBodyGyro-meanFreq()-Y	
fBodyGyro-meanFreq()-Z	
fBodyAccMag-mean()	
fBodyAccMag-std()	
fBodyAccMag-meanFreq()	
fBodyBodyAccJerkMag-mean()	
fBodyBodyAccJerkMag-std()	
fBodyBodyAccJerkMag-meanFreq()	
fBodyBodyGyroMag-mean()	
fBodyBodyGyroMag-std()	
fBodyBodyGyroMag-meanFreq()	
fBodyBodyGyroJerkMag-mean()	
fBodyBodyGyroJerkMag-std()	
fBodyBodyGyroJerkMag-meanFreq()

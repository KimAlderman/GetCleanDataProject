## Project for Getting & Cleaning Data on Coursera
The repo contains the R script and codebook for completing the project in the Getting and Cleaning Data class on Coursera.com. The end product of the R script is a tidy data set which contains a tidy data set with the average of each variable for each activity and each subject.

### Assumptions
As per the project rubric, "the file run_analysis.R in the main directory ... can be run as long as the Samsung data is in your working directory." If needed, the data can be downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Please ensure that the UCI Har Dataset is your working directory. 

### Script Description
- Loads the required libraries
- Reads in the raw test/train data for each subject, activity, and measurement
- Using rbind and cbind, merges these into one large 10299 row x 563 column dataframe named "alldata", per item #1 of the project instructions
- Reads in the features data and creates vector of all mean or standard deviation (std) measurements. This is used to subset the dataframe to only include measurement of the mean and standard deviation, per item #2 of the project instructions.  
- Changed the numeric codes to the descriptive terms for activties, per item #3 of the project instructions.
- Changed the column names from non-informative placeholders (ex. V1) to descriptive variable names, per item #4 of the project instructions.
- Using ddply and the function colMeans, created means for each variable for each subject and each activity, per item #5 of the project description

The final tidy data set, "meanData" (which is not the Data Science equivalent of Mean Girls, thankfully), is written to data_averages.txt, which has been uploaded to the Coursera site. This data set meets the tidy data criteria set out by Hadley Wickham at https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html
- Each variable forms a column (subject, activity, measurement type)
- Each observation forms a row. For this data set, an observation is a unique combination of subject and activity. Each observation is a row: 30 subjects x 6 activities = 180 rows
- Each type of observation type forms a table. This was accomplished during the merge portions of the script.

## Getting and Cleaning Data - Project

1. You should create one R script called run_analysis.R that does the following.
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Notes

* R script uses the plyr & reshape2 packages.
* The dataset will be downloaded and unzipped in the current directory if it's not there
* Source dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
* Variables containing mean() & std() are used.
* R script run_analysis.R
* Execute run_analysis.R results in tidy.txt 

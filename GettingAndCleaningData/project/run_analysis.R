library(plyr)
library(reshape2)
data.URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data.file <- "har_dataset.zip"
data.dir <- "UCI HAR Dataset"

## Download and unzip the dataset:
if (!file.exists(data.file)){
  
  download.file(data.URL, data.file)
}  
if (!file.exists(data.dir)) { 
  unzip(data.file) 
}

# Load features data
feature_names <- read.table(paste(data.dir, "features.txt", sep="/"))
feature_names[,2] <- as.character(feature_names[,2])


# Loading activity data
activity_labels  <- read.table(paste(data.dir, "activity_labels.txt", sep="/"), header = FALSE)
activity_labels[,2] <- as.character(activity_labels [,2])

# Read training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activity_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
features_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

# Read test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activity_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
features_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

# Merge the training and the test sets to create one data set
subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_train, activity_test)
features <- rbind(features_train, features_test)

colnames(features) <- t(feature_names[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
merged_data <- cbind(features,activity,subject)

# Extracts only the measurements on the mean and standard deviation for each measurement
mean_std_data <- grep(".*Mean.*|.*Std.*", names(merged_data), ignore.case=TRUE)
requiredColumns <- c(mean_std_data, 562, 563)
extracted_data <- merged_data[,requiredColumns]

# Uses descriptive activity names to name the activities in the data set
extracted_data$Activity <- as.character(extracted_data$Activity)
for (i in 1:6){
  extracted_data$Activity[extracted_data$Activity == i] <- as.character(activity_labels[i,2])
}
extracted_data$Activity <- as.factor(extracted_data$Activity)
extracted_data_orig <-extracted_data

# Appropriately labels the data set with descriptive variable names
names(extracted_data)<-gsub("Acc", "Accelerometer", names(extracted_data))
names(extracted_data)<-gsub("Gyro", "Gyroscope", names(extracted_data))
names(extracted_data)<-gsub("BodyBody", "Body", names(extracted_data))
names(extracted_data)<-gsub("Mag", "Magnitude", names(extracted_data))
names(extracted_data)<-gsub("^t", "Time", names(extracted_data))
names(extracted_data)<-gsub("^f", "Frequency", names(extracted_data))
names(extracted_data)<-gsub("tBody", "TimeBody", names(extracted_data))
names(extracted_data)<-gsub("-mean()", "Mean", names(extracted_data), ignore.case = TRUE)
names(extracted_data)<-gsub("-std()", "STD", names(extracted_data), ignore.case = TRUE)
names(extracted_data)<-gsub("-freq()", "Frequency", names(extracted_data), ignore.case = TRUE)
names(extracted_data)<-gsub("angle", "Angle", names(extracted_data))
names(extracted_data)<-gsub("gravity", "Gravity", names(extracted_data))

# From the data set in step 4, creates a second,
# independent tidy data set with the average of each variable for each activity and each subject

extracted_data$Subject <- as.factor(extracted_data$Subject)
extracted_data <- data.table(extracted_data)

tidy_data <- aggregate(. ~Subject + Activity, extracted_data, mean)
tidy_data <- tidy_data[order(tidy_data$Subject,tidy_data$Activity),]

write.table(tidy_data, file = "tidy.txt", row.names = FALSE)

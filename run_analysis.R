################################################################################
# This file provides the R code used to prepare tidy data that can be used 
# for later analysis
# Peer-graded Assignment: Getting and Cleaning Data Course Project
# Polina Kukhareva
################################################################################

setwd("C:\Users\Polina\Google Drive\data-science-coursera\data cleaning\class project\Getting-and-Cleaning-Data-in-R")


# Install packages required for the analysis (uncomment if needed)
# install.packages("dplyr")

# load the packages
library(dplyr)

#1. Merge the training and the test sets to create one data set.

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

x <- rbind (x_train, x_test)


#getting column names
features <- read.table("./UCI HAR Dataset/features.txt")

#changing variables names to lower case and substituting some characters
features$V2 <- tolower(gsub("\\(\\)|,|-| ","", features$V2))

#assigning variable names
names(x) <- features$V2

#2. Extract only the measurements on the mean and standard deviation for each measurement.

#removing duplicated variables
x <- x[, !duplicated(features$V2)]
#only keeping mean and std
x <- select(x, features[grep("mean[xyz]|std[xyz]|mean$|std$", features$V2), 2])


#getting Test labels 
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "testlabel")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "testlabel")
y <- rbind (y_train, y_test)

#getting subject info
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
subject <- rbind (subject_train, subject_test)

#combining subject, activity and observations data
data <- cbind(y, subject, x)

#3. Use descriptive activity names to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("testlabel", "activity"))
data <- merge(activity_labels, data, by = "testlabel")
str(data)

#4. Appropriately label the data set with descriptive variable names.
# we already have that

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# 30 subjects * 6 activities = 180 observations

tidy_data <- data %>% group_by(activity, subject) %>% summarise_all(funs(mean))
write.table(tidy_data, file = "./tidy_data.txt", row.name=FALSE)



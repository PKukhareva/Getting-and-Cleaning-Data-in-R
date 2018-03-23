# Getting-and-Cleaning-Data-in-R
Getting and Cleaning Data Course Project

The assignment is based on data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains run_analysis.R, README.md, CodeBook.md, tidy_data.txt and 'UCI HAR Dataset' folder containing original datset.

CodeBook.md describes the variables, the data, and any transformations or work that you performed to clean up the data.

Run_analysis.R script:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Tidy_data.txt contains the average of each mean and std variable from the original dataset for each activity and each subject (180 observations and 69 variables).



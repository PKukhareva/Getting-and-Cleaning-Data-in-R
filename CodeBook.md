
# Modified Human Activity Recognition Using Smartphones Dataset

## Version 2.0

### Polina Kukhareva


## Original Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



## Modified dataset

- 'tidy_data.txt ': contains the average of each variable for each activity and each subject (180 observations and 69 variables):

[1] "activity"                 "subject"                  "testlabel"                "tbodyaccmeanx"           
 [5] "tbodyaccmeany"            "tbodyaccmeanz"            "tbodyaccstdx"             "tbodyaccstdy"            
 [9] "tbodyaccstdz"             "tgravityaccmeanx"         "tgravityaccmeany"         "tgravityaccmeanz"        
[13] "tgravityaccstdx"          "tgravityaccstdy"          "tgravityaccstdz"          "tbodyaccjerkmeanx"       
[17] "tbodyaccjerkmeany"        "tbodyaccjerkmeanz"        "tbodyaccjerkstdx"         "tbodyaccjerkstdy"        
[21] "tbodyaccjerkstdz"         "tbodygyromeanx"           "tbodygyromeany"           "tbodygyromeanz"          
[25] "tbodygyrostdx"            "tbodygyrostdy"            "tbodygyrostdz"            "tbodygyrojerkmeanx"      
[29] "tbodygyrojerkmeany"       "tbodygyrojerkmeanz"       "tbodygyrojerkstdx"        "tbodygyrojerkstdy"       
[33] "tbodygyrojerkstdz"        "tbodyaccmagmean"          "tbodyaccmagstd"           "tgravityaccmagmean"      
[37] "tgravityaccmagstd"        "tbodyaccjerkmagmean"      "tbodyaccjerkmagstd"       "tbodygyromagmean"        
[41] "tbodygyromagstd"          "tbodygyrojerkmagmean"     "tbodygyrojerkmagstd"      "fbodyaccmeanx"           
[45] "fbodyaccmeany"            "fbodyaccmeanz"            "fbodyaccstdx"             "fbodyaccstdy"            
[49] "fbodyaccstdz"             "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"        "fbodyaccjerkmeanz"       
[53] "fbodyaccjerkstdx"         "fbodyaccjerkstdy"         "fbodyaccjerkstdz"         "fbodygyromeanx"          
[57] "fbodygyromeany"           "fbodygyromeanz"           "fbodygyrostdx"            "fbodygyrostdy"           
[61] "fbodygyrostdz"            "fbodyaccmagmean"          "fbodyaccmagstd"           "fbodybodyaccjerkmagmean" 
[65] "fbodybodyaccjerkmagstd"   "fbodybodygyromagmean"     "fbodybodygyromagstd"      "fbodybodygyrojerkmagmean"
[69] "fbodybodygyrojerkmagstd" 

## Transformations

To create this data set 'train/X_train.txt' training set and 'test/X_test.txt': test set were combined to produce a data set with 561 columns and 10299 rows, subject ids and activity labels were added, and then the data were summarised by activity and subject id.

## Original Variables (Feature Selection)


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were kept in the modified dataset are:  

mean(): Mean value
std(): Standard deviation

## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

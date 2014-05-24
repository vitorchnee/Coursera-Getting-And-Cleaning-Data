# Code Book
./data/summary.txt (output from run_analysis.R) - To produce this file, the script (run_analysis.R) merges test and training measurements (X), subject (s) and activity (y) data from the UCI data set (AKA the "Human Activity Recognition Using Smartphones Dataset" - see References, Data), then the mean is computed for each ID tuple. The summary output, in currently configured form and with source data fetched 20 May 2014, has 180 rows and 69 columns. Changing X_fcols or altering the source measurement data can change the output dimensions. See also, README.md. 

## References:
* Project: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Files Referenced:
* ./data/UCI HAR Dataset/features.txt - All features, a subset was extracted for this exercise. See below.
* ./data/UCI HAR Dataset/activity_labels.txt - activity.id to activity dictionary
* ./data/test/subject_test.txt - Subject IDs (test)
* ./data/train/subject_train.txt - Subject IDs (train)
* ./data/test/y_test.txt - Activity IDs (test)
* ./data/train/y_train.txt - Activity IDs (train)
* ./data/test/X_test.txt - Feature Measurements (test)
* ./data/train/X_train.txt - Feature Measurments (train)

## ID Columns (See DF samples, DF summary and output file)
* `subject.id` - The participant ID (AKA subject)
* `activity.id` - The activity ID 
* `activity` - The activity label

## Features (See DF samples, DF summary and output file)
This list was hand-picked from all the measurements available in source files (and merged DF, X). I intentionally picked only measurements of mean and standard deviation so excluded all others (including the MeanFreq fields). Additional columns may be added to the output by amending X_fcols, a feature column index. However, bear in mind the output will take the mean of all samples which may not be appropriate technique for aggregating some measurements.

X (col-index) - Label
* 1 - `tBodyAcc_mean_X`
* 2 - `tBodyAcc_mean_Y`
* 3 - `tBodyAcc_mean_Z`
* 4 - `tBodyAcc_std_X`
* 5 - `tBodyAcc_std_Y`
* 6 - `tBodyAcc_std_Z`
* 41 - `tGravityAcc_mean_X`
* 42 - `tGravityAcc_mean_Y`
* 43 - `tGravityAcc_mean_Z`
* 44 - `tGravityAcc_std_X`
* 45 - `tGravityAcc_std_Y`
* 46 - `tGravityAcc_std_Z`
* 81 - `tBodyAccJerk_mean_X`
* 82 - `tBodyAccJerk_mean_Y`
* 83 - `tBodyAccJerk_mean_Z`
* 84 - `tBodyAccJerk_std_X`
* 85 - `tBodyAccJerk_std_Y`
* 86 - `tBodyAccJerk_std_Z`
* 121 - `tBodyGyro_mean_X`
* 122 - `tBodyGyro_mean_Y`
* 123 - `tBodyGyro_mean_Z`
* 124 - `tBodyGyro_std_X`
* 125 - `tBodyGyro_std_Y`
* 126 - `tBodyGyro_std_Z`
* 161 - `tBodyGyroJerk_mean_X`
* 162 - `tBodyGyroJerk_mean_Y`
* 163 - `tBodyGyroJerk_mean_Z`
* 164 - `tBodyGyroJerk_std_X`
* 165 - `tBodyGyroJerk_std_Y`
* 166 - `tBodyGyroJerk_std_Z`
* 201 - `tBodyAccMag_mean`
* 202 - `tBodyAccMag_std`
* 214 - `tGravityAccMag_mean`
* 215 - `tGravityAccMag_std`
* 227 - `tBodyAccJerkMag_mean`
* 228 - `tBodyAccJerkMag_std`
* 240 - `tBodyGyroMag_mean`
* 241 - `tBodyGyroMag_std`
* 253 - `tBodyGyroJerkMag_mean`
* 254 - `tBodyGyroJerkMag_std`
* 266 - `fBodyAcc_mean_X`
* 267 - `fBodyAcc_mean_Y`
* 268 - `fBodyAcc_mean_Z`
* 269 - `fBodyAcc_std_X`
* 270 - `fBodyAcc_std_Y`
* 271 - `fBodyAcc_std_Z`
* 345 - `fBodyAccJerk_mean_X`
* 346 - `fBodyAccJerk_mean_Y`
* 347 - `fBodyAccJerk_mean_Z`
* 348 - `fBodyAccJerk_std_X`
* 349 - `fBodyAccJerk_std_Y`
* 350 - `fBodyAccJerk_std_Z`
* 424 - `fBodyGyro_mean_X`
* 425 - `fBodyGyro_mean_Y`
* 426 - `fBodyGyro_mean_Z`
* 427 - `fBodyGyro_std_X`
* 428 - `fBodyGyro_std_Y`
* 429 - `fBodyGyro_std_Z`
* 503 - `fBodyAccMag_mean`
* 504 - `fBodyAccMag_std`
* 516 - `fBodyBodyAccJerkMag_mean`
* 517 - `fBodyBodyAccJerkMag_std`
* 529 - `fBodyBodyGyroMag_mean`
* 530 - `fBodyBodyGyroMag_std`
* 542 - `fBodyBodyGyroJerkMag_mean`
* 543 - `fBodyBodyGyroJerkMag_std`

## Activity Labels
Source: ./data/UCI HAR Dataset/activity_labels.txt, a reference/dictionary
activity.id - activity
* 1 - `WALKING`
* 2 - `WALKING_UPSTAIRS`
* 3 - `WALKING_DOWNSTAIRS`
* 4 - `SITTING`
* 5 - `STANDING`
* 6 - `LAYING`

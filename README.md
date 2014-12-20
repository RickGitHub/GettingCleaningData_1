GettingCleaningData_1
=====================

Getting and Cleaning Data - Programming Assignment 1

This repository contains an R script used to transform raw data from the Human Activity Recognition Using Smartphones Data Set webpage: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones [1]

The script run_analysis.R should be placed in your working directory along with the unzipped data set https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Load the run_analysis.R with the source() function then call run_analysis() with no arguments. 

The function will look for these files in the working directory:

- 'features.txt': List of all features. (561 total)
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set of measured values.
- 'train/y_train.txt': Training labels. The Activity ID for each measurement set in X_train.txt.
- 'train/subject_train.txt': Subject ID which performed the activity involved in Training set.
- 'test/X_test.txt': Test set of measured values.
- 'test/y_test.txt': Test labels. The Activity ID for each measurement set in X_test.txt.
- 'test/subject_test.txt': Subject ID which performed the activity involved in Test set.

The function will combine the data in X_train and X_test and merge in descriptive labels obtained from the features file. The function will also merge in Activity IDs from the y_train and y_test
files and merge in Subject ID information from the subject_train and subject_test files.

The function will reduce the X_train and X_test data to the following measurements related to mean and standard deviation with final output values
representing the mean of the entire data set  for each of the measurements below grouped by Subject and Activity. 

The \Inertial Signals\ data or Angle() measurements derived from mean values aren't used because they don't represent mean or std values. 

The output file will be created in the working directory as run_analysis.txt in a tidy/wide format.

Activity
SubjectID	
tBodyAcc-mean()-X	
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


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
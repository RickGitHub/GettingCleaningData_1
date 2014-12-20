Getting and Cleaning Data - Programming Assignment 1
-----------------------------------------------------

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

|  Name                                |  Type        |UnitsOfMeasure | Description                                                                                 |
|  ---                                 |---           |---            |---                                                                                          |
|  Activity                            |  Char:       |N/A            | Activity Description WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING    |
|  SubjectID                           |  Num: 1:30   |N/A            | Subject ID Who Performed Activity                                                           |
|  tBodyAcc-mean()-X                   |  Num: [-1,1] |g              | Time Domain Body Acceleration Mean X-Axis                                                   |
|  tBodyAcc-mean()-Y                   |  Num: [-1,1] |g              | Time Domain Body Acceleration Mean Y-Axis                                                   |
|  tBodyAcc-mean()-Z                   |  Num: [-1,1] |g              | Time Domain Body Acceleration Mean Z-Axis                                                   |
|  tBodyAcc-std()-X                    |  Num: [-1,1] |g              | Time Domain Body Acceleration Standard Deviation X-Axis                                     |
|  tBodyAcc-std()-Y                    |  Num: [-1,1] |g              | Time Domain Body Acceleration Standard Deviation Y-Axis                                     |
|  tBodyAcc-std()-Z                    |  Num: [-1,1] |g              | Time Domain Body Acceleration Standard Deviation Z-Axis                                     |
|  tGravityAcc-mean()-X                |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Mean X-Axis                                                |
|  tGravityAcc-mean()-Y                |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Mean Y-Axis                                                |
|  tGravityAcc-mean()-Z                |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Mean Z-Axis                                                |
|  tGravityAcc-std()-X                 |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Standard Deviation X-Axis                                  |
|  tGravityAcc-std()-Y                 |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Standard Deviation Y-Axis                                  |
|  tGravityAcc-std()-Z                 |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Standard Deviation Z-Axis                                  |
|  tBodyAccJerk-mean()-X               |  Num: [-1,1] |g              | Time Domain Body Acceleration Jerk Mean X-Axis                                              |
|  tBodyAccJerk-mean()-Y               |  Num: [-1,1] |g              | Time Domain Body Acceleration Jerk Mean Y-Axis                                              |
|  tBodyAccJerk-mean()-Z               |  Num: [-1,1] |g              | Time Domain Body Acceleration Jerk Mean Z-Axis                                              |
|  tBodyAccJerk-std()-X                |  Num: [-1,1] |g              | Time Domain Body Acceleration Jerk Standard Deviation X-Axis                                |
|  tBodyAccJerk-std()-Y                |  Num: [-1,1] |g              | Time Domain Body Acceleration Jerk Standard Deviation Y-Axis                                |
|  tBodyAccJerk-std()-Z                |  Num: [-1,1] |g              | Time Domain Body Acceleration Jerk Standard Deviation Z-Axis                                |
|  tBodyGyro-mean()-X                  |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Mean X-Axis                                               |
|  tBodyGyro-mean()-Y                  |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Mean Y-Axis                                               |
|  tBodyGyro-mean()-Z                  |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Mean Z-Axis                                               |
|  tBodyGyro-std()-X                   |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Standard Deviation X-Axis                                 |
|  tBodyGyro-std()-Y                   |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Standard Deviation Y-Axis                                 |
|  tBodyGyro-std()-Z                   |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Standard Deviation Z-Axis                                 |
|  tBodyGyroJerk-mean()-X              |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Mean X-Axis                                          |
|  tBodyGyroJerk-mean()-Y              |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Mean Y-Axis                                          |
|  tBodyGyroJerk-mean()-Z              |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Mean Z-Axis                                          |
|  tBodyGyroJerk-std()-X               |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Standard Deviation X-Axis                            |
|  tBodyGyroJerk-std()-Y               |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Standard Deviation Y-Axis                            |
|  tBodyGyroJerk-std()-Z               |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Standard Deviation Z-Axis                            |
|  tBodyAccMag-mean()                  |  Num: [-1,1] |g              | Time Domain Body Acceleration Magnitude Mean                                                |
|  tBodyAccMag-std()                   |  Num: [-1,1] |g              | Time Domain Body Acceleration Magnitude Standard Deviation                                  |
|  tGravityAccMag-mean()               |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Magnitude Mean                                             |
|  tGravityAccMag-std()                |  Num: [-1,1] |g              | Time Domain Gravity Acceleration Magnitude Standard Deviation                               |
|  tBodyAccJerkMag-mean()              |  Num: [-1,1] |g              | Time Domain Body Jerk Acceleration Magnitude Mean                                           |
|  tBodyAccJerkMag-std()               |  Num: [-1,1] |g              | Time Domain Body Jerk Acceleration Magnitude Standard Deviation                             |
|  tBodyGyroMag-mean()                 |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Magnitude Mean                                            |
|  tBodyGyroMag-std()                  |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Magnitude Standard Deviation                              |
|  tBodyGyroJerkMag-mean()             |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Magnitude Mean                                       |
|  tBodyGyroJerkMag-std()              |  Num: [-1,1] |rad/s          | Time Domain Body Angular Velocity Jerk Magnitude Standard Deviation                         |
|  fBodyAcc-mean()-X                   |  Num: [-1,1] |g              | FFT Body Acceleration Mean X-Axis                                                           |
|  fBodyAcc-mean()-Y                   |  Num: [-1,1] |g              | FFT Body Acceleration Mean Y-Axis                                                           |
|  fBodyAcc-mean()-Z                   |  Num: [-1,1] |g              | FFT Body Acceleration Mean Z-Axis                                                           |
|  fBodyAcc-std()-X                    |  Num: [-1,1] |g              | FFT Body Acceleration Standard Deviation X-Axis                                             |
|  fBodyAcc-std()-Y                    |  Num: [-1,1] |g              | FFT Body Acceleration Standard Deviation Y-Axis                                             |
|  fBodyAcc-std()-Z                    |  Num: [-1,1] |g              | FFT Body Acceleration Standard Deviation Z-Axis                                             |
|  fBodyAcc-meanFreq()-X               |  Num: [-1,1] |Hz             | FFT Body Acceleration Frequency Mean X-Axis                                                 |
|  fBodyAcc-meanFreq()-Y               |  Num: [-1,1] |Hz             | FFT Body Acceleration Frequency Mean Y-Axis                                                 |
|  fBodyAcc-meanFreq()-Z               |  Num: [-1,1] |Hz             | FFT Body Acceleration Frequency Mean Z-Axis                                                 |
|  fBodyAccJerk-mean()-X               |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Mean X-Axis                                                      |
|  fBodyAccJerk-mean()-Y               |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Mean Y-Axis                                                      |
|  fBodyAccJerk-mean()-Z               |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Mean Z-Axis                                                      |
|  fBodyAccJerk-std()-X                |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Standard Deviation X-Axis                                        |
|  fBodyAccJerk-std()-Y                |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Standard Deviation Y-Axis                                        |
|  fBodyAccJerk-std()-Z                |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Standard Deviation Z-Axis                                        |
|  fBodyAccJerk-meanFreq()-X           |  Num: [-1,1] |Hz             | FFT Body Acceleration Jerk Frequency Mean X-Axis                                            |
|  fBodyAccJerk-meanFreq()-Y           |  Num: [-1,1] |Hz             | FFT Body Acceleration Jerk Frequency Mean Y-Axis                                            |
|  fBodyAccJerk-meanFreq()-Z           |  Num: [-1,1] |Hz             | FFT Body Acceleration Jerk Frequency Mean Z-Axis                                            |
|  fBodyGyro-mean()-X                  |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Mean X-Axis                                                       |
|  fBodyGyro-mean()-Y                  |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Mean Y-Axis                                                       |
|  fBodyGyro-mean()-Z                  |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Mean Z-Axis                                                       |
|  fBodyGyro-std()-X                   |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Standard Deviation X-Axis                                         |
|  fBodyGyro-std()-Y                   |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Standard Deviation Y-Axis                                         |
|  fBodyGyro-std()-Z                   |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Standard Deviation Z-Axis                                         |
|  fBodyGyro-meanFreq()-X              |  Num: [-1,1] |Hz             | FFT Body Angular Velocity Frequency Mean X-Axis                                             |
|  fBodyGyro-meanFreq()-Y              |  Num: [-1,1] |Hz             | FFT Body Angular Velocity Frequency Mean Y-Axis                                             |
|  fBodyGyro-meanFreq()-Z              |  Num: [-1,1] |Hz             | FFT Body Angular Velocity Frequency Mean Z-Axis                                             |
|  fBodyAccMag-mean()                  |  Num: [-1,1] |g              | FFT Body Acceleration Magnitude Mean                                                        |
|  fBodyAccMag-std()                   |  Num: [-1,1] |g              | FFT Body Acceleration Magnitude Standard Deviation                                          |
|  fBodyAccMag-meanFreq()              |  Num: [-1,1] |Hz             | FFT Body Acceleration Frequency Magnitude Mean                                              |
|  fBodyBodyAccJerkMag-mean()          |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Magnitude Mean                                                   |
|  fBodyBodyAccJerkMag-std()           |  Num: [-1,1] |g              | FFT Body Acceleration Jerk Magnitude Standard Deviation                                     |
|  fBodyBodyAccJerkMag-meanFreq()      |  Num: [-1,1] |Hz             | FFT Body Acceleration Jerk Frequency Magnitude Mean                                         |
|  fBodyBodyGyroMag-mean()             |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Magnitude Mean                                                    |
|  fBodyBodyGyroMag-std()              |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Magnitude Standard Deviation                                      |
|  fBodyBodyGyroMag-meanFreq()         |  Num: [-1,1] |Hz             | FFT Body Angular Velocity Frequency Magnitude Mean                                          |
|  fBodyBodyGyroJerkMag-mean()         |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Jerk Magnitude Mean                                               |
|  fBodyBodyGyroJerkMag-std()          |  Num: [-1,1] |rad/s          | FFT Body Angular Velocity Jerk Magnitude Standard Deviation                                 |
|  fBodyBodyGyroJerkMag-meanFreq()     |  Num: [-1,1] |Hz             | FFT Body Angular Velocity Frequency Magnitude Mean                                          |



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
 Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial 
 linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label 
 the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected 
 for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width 
sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational 
force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window,
 a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for 
 more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 66-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'tidy_data.txt': File containing 30 subjects in six different actions when measured 66 indicators.

- 'CodeBook.pdf': A file that contains an explanation of the different variables

- 'run_analysis.R': R file for extract the tidy data.

- 'measurements.txt': A file containing a list of all measurements of mean() and Standard deviation(),Fields    where the mean and standard deviation is contained within the name itself is not included


Notes: 
======
1. I apologize for the poor description, English is not my native language
2. I completed the task at the last minute so unfortunately I did not have much time to invest in CodeBook & the 	READNY file
3. Good luck and productive learning in coursera
4. Attach a list of file measurements.txt :
Line 1: 1 tBodyAcc-mean()-X
Line 2: 2 tBodyAcc-mean()-Y
Line 3: 3 tBodyAcc-mean()-Z
Line 41: 41 tGravityAcc-mean()-X
Line 42: 42 tGravityAcc-mean()-Y
Line 43: 43 tGravityAcc-mean()-Z
Line 81: 81 tBodyAccJerk-mean()-X
Line 82: 82 tBodyAccJerk-mean()-Y
Line 83: 83 tBodyAccJerk-mean()-Z
Line 121: 121 tBodyGyro-mean()-X
Line 122: 122 tBodyGyro-mean()-Y
Line 123: 123 tBodyGyro-mean()-Z
Line 161: 161 tBodyGyroJerk-mean()-X
Line 162: 162 tBodyGyroJerk-mean()-Y
Line 163: 163 tBodyGyroJerk-mean()-Z
Line 201: 201 tBodyAccMag-mean()
Line 214: 214 tGravityAccMag-mean()
Line 227: 227 tBodyAccJerkMag-mean()
Line 240: 240 tBodyGyroMag-mean()
Line 253: 253 tBodyGyroJerkMag-mean()
Line 266: 266 fBodyAcc-mean()-X
Line 267: 267 fBodyAcc-mean()-Y
Line 268: 268 fBodyAcc-mean()-Z
Line 345: 345 fBodyAccJerk-mean()-X
Line 346: 346 fBodyAccJerk-mean()-Y
Line 347: 347 fBodyAccJerk-mean()-Z
Line 424: 424 fBodyGyro-mean()-X
Line 425: 425 fBodyGyro-mean()-Y
Line 426: 426 fBodyGyro-mean()-Z
Line 503: 503 fBodyAccMag-mean()
Line 516: 516 fBodyBodyAccJerkMag-mean()
Line 529: 529 fBodyBodyGyroMag-mean()
Line 542: 542 fBodyBodyGyroJerkMag-mean()
Line 4: 4 tBodyAcc-std()-X
Line 5: 5 tBodyAcc-std()-Y
Line 6: 6 tBodyAcc-std()-Z
Line 44: 44 tGravityAcc-std()-X
Line 45: 45 tGravityAcc-std()-Y
Line 46: 46 tGravityAcc-std()-Z
Line 84: 84 tBodyAccJerk-std()-X
Line 85: 85 tBodyAccJerk-std()-Y
Line 86: 86 tBodyAccJerk-std()-Z
Line 124: 124 tBodyGyro-std()-X
Line 125: 125 tBodyGyro-std()-Y
Line 126: 126 tBodyGyro-std()-Z
Line 164: 164 tBodyGyroJerk-std()-X
Line 165: 165 tBodyGyroJerk-std()-Y
Line 166: 166 tBodyGyroJerk-std()-Z
Line 202: 202 tBodyAccMag-std()
Line 215: 215 tGravityAccMag-std()
Line 228: 228 tBodyAccJerkMag-std()
Line 241: 241 tBodyGyroMag-std()
Line 254: 254 tBodyGyroJerkMag-std()
Line 269: 269 fBodyAcc-std()-X
Line 270: 270 fBodyAcc-std()-Y
Line 271: 271 fBodyAcc-std()-Z
Line 348: 348 fBodyAccJerk-std()-X
Line 349: 349 fBodyAccJerk-std()-Y
Line 350: 350 fBodyAccJerk-std()-Z
Line 427: 427 fBodyGyro-std()-X
Line 428: 428 fBodyGyro-std()-Y
Line 429: 429 fBodyGyro-std()-Z
Line 504: 504 fBodyAccMag-std()
Line 517: 517 fBodyBodyAccJerkMag-std()
Line 530: 530 fBodyBodyGyroMag-std()
Line 543: 543 fBodyBodyGyroJerkMag-std()


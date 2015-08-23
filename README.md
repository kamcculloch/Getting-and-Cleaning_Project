# Abstract **See Code-book after steps** 

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The following steps catalog the proceadure used to download, read, manipulate, and clean Samsung Measurement data for the Coursera Getting and Cleaning Course Project.

# Steps

1. **Download the datasets form the link provided**
2. **Merges the training and the test sets to create one data set**
    1. Combine the columns of list of subjects for activities, subject, and Measurements for the training set
    2. Combine the columns of list of subjects for activities, subject, and Measurements for the test set
    3. Combine the rows of the training set and test sets to create a MEGGA DATA SETTT
3. **Extracts only the measurements on the mean and standard deviation for each measurement**
    1. Search for the word "mean" and the word "std", to extract the desited measurements
    2. Create a vector with the locations of the measuresments relating to "mean" or "std"
    3. Edit that vector to account for the additional 2 columns in the mega dataset (Subject, and Activity)
    4. Subset MEGA DATA SET based on column locations from the search vector
4. **Uses descriptive activity names to name the activities in the data set**
    1. Read the activity labels 
    2. Rename the activity label file columns
    3. Merge the data sets, adding activity label to the end based on the key provided
    4. Rearrange to put the activity name after the subject
5. **Appropriately labels the data set with descriptive variable names**
    1. Create a character vector, based on the positional vector from step III, take the vales in the second column, the names of the measurements
    2. Rename the columns of the mega dataset 
6. **From the data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject** 
    1. Use Reshape/melt to make the current dataset longform
    2. Use Reshape/dcast to reshape the data into wide format, applying the mean function to each variable by subject by activity.
    3. Write a new table with the awesome data in it
    4. Drop the mic

# Code Book
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**For Each of the variables, there is a mean and standard deviation by subject, by activity.**

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

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

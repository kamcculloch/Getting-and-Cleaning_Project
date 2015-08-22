# Abstract

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The following steps catalog the proceadure used to download, read, manipulate, and clean Samsung Measurement data for the Coursera Getting and Cleaning Course Project.

# Steps

1. Download the datasets form the link provided
2. Merges the training and the test sets to create one data set
    1. Combine the columns of list of subjects for activities, subject, and Measurements for the training set
    2. Combine the columns of list of subjects for activities, subject, and Measurements for the test set
    3. Combine the rows of the training set and test sets to create a MEGGA DATA SETTT
3. Extracts only the measurements on the mean and standard deviation for each measurement.
    1. Search for the word "mean" and the word "std", to extract the desited measurements
    2. Create a vector with the locations of the measuresments relating to "mean" or "std"
    3. Edit that vector to account for the additional 2 columns in the mega dataset (Subject, and Activity)
    4. Subset MEGA DATA SET based on column locations from the search vector
4. Uses descriptive activity names to name the activities in the data set
    1. Read the activity labels 
    2. Rename the activity label file columns
    3. Merge the data sets, adding activity label to the end based on the key provided
    4. Rearrange to put the activity name after the subject
5. Appropriately labels the data set with descriptive variable names.
    1. Create a character vector, based on the positional vector from step III, take the vales in the second column, the names of the measurements
    2. Rename the columns of the mega dataset 
6. From the data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    1. Use Reshape/melt to make the current dataset longform
    2. Use Reshape/dcast to reshape the data into wide format, applying the mean function to each variable by subject by activity.
    3. Write a new table with the awesome data in it
    4. Drop the mic

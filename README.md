# Abstract

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The following steps catalog the proceadure used to download, read, manipulate, and clean Samsung Measurement data for the Coursera Getting and Cleaning Course Project.

# Steps
1. Step 1
2. Step 2
3. Step 3
    a. Step 3a
    b. Step 3b
    c. Step 3c
1. Download the datasets form the link provided
2. Merges the training and the test sets to create one data set
    a. Combine the columns of list of subjects for activities, subject, and Measurements for the training set
    b. Combine the columns of list of subjects for activities, subject, and Measurements for the test set
    c. Combine the rows of the training set and test sets to create a MEGGA DATA SETTT
3. Extracts only the measurements on the mean and standard deviation for each measurement.
    a. Search for the word "mean" and the word "std", to extract the desited measurements
    b. Create a vector with the locations of the measuresments relating to "mean" or "std"
    c. Edit that vector to account for the additional 2 columns in the mega dataset (Subject, and Activity)
    d. Subset MEGA DATA SET based on column locations from the search vector
4. Uses descriptive activity names to name the activities in the data set
   a. Read the activity labels 
   b. Rename the activity label file columns
   c. Merge the data sets, adding activity label to the end based on the key provided
   d. Rearrange to put the activity name after the subject
5. Appropriately labels the data set with descriptive variable names.
   a. Create a character vector, based on the positional vector from step III, take the vales in the second column, the names of the measurements
   b. Rename the columns of the mega dataset 
6. From the data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    a. Use Reshape/melt to make the current dataset longform
    b. Use Reshape/dcast to reshape the data into wide format, applying the mean function to each variable by subject by activity.
    c. Write a new table with the awesome data in it
    d. Drop the mic

## Getting and Cleaning Project

## Download dataset 

filename <- "getdata_dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, filename, method="curl")
unzip(filename)

## 1. Create MEGA DATA SET 
    #Read and combine test data
x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(subject_test,y_test,x_test)
    #Read and combine training data
x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(subject_test,y_test,x_test)
    #Combine test and training data sets 
MEGA_DS <- rbind(test,train)


## 2. Extract only the measurements on the mean and standard deviation for each measurement

    #Find the V1 names (ie column location in the other files), where the descriptor is mean | std, add 2 to keep subject and activity columns
Features <- read.table("UCI HAR Dataset/features.txt")
Col_MoS <- c(grep("mean",Features$V2,ignore.case=TRUE),grep("std",Features$V2,ignore.case=TRUE))
Col_MoS <- Col_MoS[order(Col_MoS)]
Coloc_MS <- c(1,2,Col_MoS + 2)

colnames(MEGA_DS) <- c("Subject","Activity")

    #Subset MEGA DATA SET based on column locations
MEGA_MS <- MEGA_DS[,Coloc_MS] 

## 3. Uses descriptive activity names to name the activities in the data set

ALabels <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(ALabels) <- c("Activity","Activity Label")
MEGA_MSA <- merge(MEGA_MS, ALabels, by.x = "Activity", by.y="Activity")

    #reorder to please the masters
MEGA_MSA2 <- MEGA_MSA[2:87]
MEGA_MSA3 <- cbind(MEGA_MSA2[1],MEGA_MSA2[88],MEGA_MSA2[2:87])

## 4. Appropriately labels the data set with descriptive variable names. 

fnames_col<-as.character(Features[Col_MoS,2])
colnames(MEGA_MSA3) <- c("Subject","Activity_Label",fnames_col)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    # Go Long form, making it easier to calculate the means and reshape 
MEGA_melty <- melt(MEGA_MSA3, id = c("Subject", "Activity_Label"))
    # Calculate means, and go Wide with it
MEGA_mean <- dcast(MEGA_melty, Subject + Activity_Label~ variable, mean)
    # Write table 
write.table(MEGA_mean, "tidy.txt", row.names = FALSE, quote = FALSE)

    ## drop the mic

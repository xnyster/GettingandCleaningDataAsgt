# This file contains the code to
# 1. Merge the training data and test data to create one data set
# 2. Extract measurements on the mean and standard deviation for each measurement
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive variable names
# 5. Create a second, independent tidy data set from step 4 with the average of each variable for each activity and each subject


# The downloaded zip file is extracted in the working directory so all data are in "./UCI HAR Dataset"


# 1. Merge the trainind data and test data

## Read 6 separate txt files: subject_test, X_test, y_test, subject_train, X_train, y_train
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Use cbind and rbind to merge all the above 6 data sets into 1 data set
test_data <- cbind(subject_test, y_test, x_test)
train_data <- cbind(subject_train, y_train, x_train)
all_data <- rbind(test_data, train_data)


# 2. Extract columns that correspond to mean and standard deviation measurements

## Read "features.txt"
features <- read.table("./UCI HAR Dataset/features.txt")

## Create a logical factor for features with either "mean()" or "std()" in the name using regex
wanted_features <- grepl("mean\\(\\)|std\\(\\)",features$V2)

## Add two TRUEs to the beginning of wanted_features to take into account the columns for subject and y labels in all_data
wanted_cols <- c(c(TRUE, TRUE), wanted_features)

## Subset all_data with the logical vector created
data <- all_data[,wanted_cols]


# 3. Naming the activities (i.e. converting col 2 of data from numbers into factors)

## Read "activity_labels.txt"
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Merge activity_labels and data
merged_data <- merge(data, activity_labels, by.x = "V1.1", by.y = "V1", all = TRUE)

## Reorder columns and remove original col indicating activities by numbers
## So new_data will have cols: subject, activity, relevant x_test cols
data2 <- merged_data[,c(2,69,3:68)]


# 4. Label the data set with variable names

## Subset the wanted variable names from features and add it to "subject" and "activity"
names <- c("subject", "activity", as.character(features[wanted_features,2]))

## Clean up some error in naming conventions and tidying names using regex
names <- sub("BodyBody", "Body", names)
names <- gsub("\\-", "\\.", names)
names <- sub("\\(\\)", "", names)

## Label data set
names(data2) <- names


# 5. Create new dataset with the average of each variable for each activity and each subject

## Use aggregate function to calculate mean for each subject and activity
tidy_data <- aggregate(. ~ subject + activity, data = data2, mean)

## Write table to file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE) 



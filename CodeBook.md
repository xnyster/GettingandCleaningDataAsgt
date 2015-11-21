## Project Description
This purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis

##Study design and data processing

###Collection of the raw data
The raw data is downloaded from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
The data represents data collected from accelerometers from the Samsung Galaxy S smartphone. A full description is available at the sit where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

##Creating the tidy datafile

###Guide to create the tidy data file
The raw data is downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The R code run_analysis.R is then used to clean and create the tidy data file 

###Cleaning of the data
The run_analysis.R file cleans the data by doing the following:
1. Merge the training data and test data to create one data set
2. Extract measurements on the mean and standard deviation for each measurement
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names
5. Create a second, independent tidy data set from step 4 with the average of each variable for each activity and each subject

##Description of the variables in the tidy_data.txt file
The tidy_data.txt file includes headers.
Dimensions of the dataset: 180 x 68
Summary of the data: The 68 columns represent the subject, activity, and 66 other variables that are recorded for the particular subject and activity combination. 
Variables present in the data set:
1. "subject"
2. "activity"
3. "tBodyAcc.mean.X"
4. "tBodyAcc.mean.Y"
5. "tBodyAcc.mean.Z"
6. "tBodyAcc.std.X"
7. "tBodyAcc.std.Y"
8. "tBodyAcc.std.Z"
9. "tGravityAcc.mean.X"
10. "tGravityAcc.mean.Y"
11. "tGravityAcc.mean.Z"
12. "tGravityAcc.std.X"
13. "tGravityAcc.std.Y"
14. "tGravityAcc.std.Z"
15. "tBodyAccJerk.mean.X"
16. "tBodyAccJerk.mean.Y"
17. "tBodyAccJerk.mean.Z"
18. "tBodyAccJerk.std.X"
19. "tBodyAccJerk.std.Y"
20. "tBodyAccJerk.std.Z"
21. "tBodyGyro.mean.X"
22. "tBodyGyro.mean.Y"
23. "tBodyGyro.mean.Z"
24. "tBodyGyro.std.X"
25. "tBodyGyro.std.Y"
26. "tBodyGyro.std.Z"
27. "tBodyGyroJerk.mean.X"
28. "tBodyGyroJerk.mean.Y"
29. "tBodyGyroJerk.mean.Z"
30. "tBodyGyroJerk.std.X"
31. "tBodyGyroJerk.std.Y"
32. "tBodyGyroJerk.std.Z"
33. "tBodyAccMag.mean"
34. "tBodyAccMag.std"
35. "tGravityAccMag.mean"
36. "tGravityAccMag.std"
37. "tBodyAccJerkMag.mean"
38. "tBodyAccJerkMag.std"
39. "tBodyGyroMag.mean"
40. "tBodyGyroMag.std"
41. "tBodyGyroJerkMag.mean"
42. "tBodyGyroJerkMag.std"
43. "fBodyAcc.mean.X"
44. "fBodyAcc.mean.Y"
45. "fBodyAcc.mean.Z"
46. "fBodyAcc.std.X"
47. "fBodyAcc.std.Y"
48. "fBodyAcc.std.Z"
49. "fBodyAccJerk.mean.X"
50. "fBodyAccJerk.mean.Y"
51. "fBodyAccJerk.mean.Z"
52. "fBodyAccJerk.std.X"
53. "fBodyAccJerk.std.Y"
54. "fBodyAccJerk.std.Z"
55. "fBodyGyro.mean.X"
56. "fBodyGyro.mean.Y"
57. "fBodyGyro.mean.Z"
58. "fBodyGyro.std.X"
59. "fBodyGyro.std.Y"
60. "fBodyGyro.std.Z"
61. "fBodyAccMag.mean"
62. "fBodyAccMag.std"
63. "fBodyBodyAccJerkMag.mean"
64. "fBodyBodyAccJerkMag.std"
65. "fBodyBodyGyroMag.mean"
66. "fBodyBodyGyroMag.std"
67. "fBodyBodyGyroJerkMag.mean" 
68. "fBodyBodyGyroJerkMag.std"


##Reference
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

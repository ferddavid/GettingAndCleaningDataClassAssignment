

Codebook

This analysis was based on readings of the Samsung Galaxy S phone.

The following was analyzed:

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

For each of these, we narrowed it down to the following measurements:


mean(): the mean of the measurements of the variable
std(): standard deviation of the measurements of the variable

Also, each measurement was tied to a particular activity:
1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING


A tidy data set was calculated, where for each combination of activity and subject,
a mean of the calculations was calculated.

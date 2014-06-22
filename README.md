

Getting and Cleaning Data Class Assignment

This assignment took in data from the UCI database, where measurements
from a Galaxy S smartphone were taken and tied to a particular activity.

The purpose of this assignment was to clean the data into tidy data. 

I took the following steps:

First I took in and read the training data and test data.

Then I took in the activity data for both the test and the training data.  I named the columns "activity."

Then I read in the features.  I also used the make.names commmand to remove duplicate names
to create unique names, and also changed the vector from factors to characters.

I then read in the subjects to a seperate vector.

The column names (using features) were added to the test and training set.  This satisfied part 4.

I then combined for both the test and training data the feature data, activity, and subject data, using the cbind command.
The cbind command combines columns.

For part 1, I combined the files using the rbind command, which combines the rows.

To get only the mean and std columns, I first used the sub command to change the meanFreq names to mfreq
(so as to not to confuse the subsequent search).
Then I used a grep command to get an index of which columns contained the mean and std.
I then subset the original data using the column indices from the grep command.

I then changed the activity #'s to activity names.  I did this by changing the activity column to levels, the changed the names of each level.

To create the tidy data set, I melted the columns to identify the activity and subject.
I then dcast to create a wide data set.  So for each activy and subject combination in
the rows, I have calculated the mean of each relevant column.

#read in test and training data
train <- read.table("X_train.txt",sep="")
test <- read.table("X_test.txt",sep="")

#read in activity for test and training data, set col names
trainactivity <- read.table("y_train.txt",sep="")
colnames(trainactivity) <- "activity"
testactivity <- read.table("y_test.txt", sep="")
colnames(testactivity) <- "activity"

#read in features
features <- read.table("features.txt", sep="")
featnames <- make.names(as.character(features[,2]), unique = TRUE)

#read in subjects
subjecttrain <- read.table("subject_train.txt",sep="")
colnames(subjecttrain) <- "subject"
subjecttest <- read.table("subject_test.txt", sep="")
colnames(subjecttest) <- "subject"

#Part 4, add in column names
colnames(test) <- featnames
colnames(train) <- featnames

#combine test and training files
train_total <- cbind(subjecttrain, trainactivity, train)
test_total <- cbind(subjecttest, testactivity, test)

#Part 1, combine files into one
totaldata <- rbind(train_total, test_total)

#Part 2, Get only mean and standard dev columns
colnames(totaldata) <- sub("meanFreq","mfreq",names(totaldata),)
meancolumns <- grep("mean()",names(totaldata), ignore.case = TRUE)
stdcolumns <- grep("std()",names(totaldata), ignore.case = TRUE)
meanstdtotal <- totaldata[,c(1,2,meancolumns,stdcolumns)]

#Part 3, Change activity to the activity names
meanstdtotal$activity <- as.factor(meanstdtotal$activity)
levels(meanstdtotal$activity) <- c("walking", "walking_upstairs", 
                                   "walking_downstairs", "sitting", 
                                   "standing", "laying")

#melt data frame to identify ID variables
library(reshape2)
meanstd_melt <- melt(meanstdtotal,id=c("activity","subject"))

#dcast the data to get the summary statistic: mean
tidymeandata <- dcast(meanstd_melt, activity + subject ~ variable,mean)

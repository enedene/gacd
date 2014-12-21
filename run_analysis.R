setwd("UCI HAR Dataset/") #change accordingly

#read in labels, features, merge the train and test data sets
activity = read.table("./activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)[, 2]
features = read.table('./features.txt', header = FALSE, stringsAsFactors = FALSE)[, 2]

data = rbind(read.csv("train/X_train.txt", header = FALSE, sep = ""),
             read.csv("test/X_test.txt", header = FALSE, sep = ""))
dataActivity = as.factor(c(unlist(read.csv("train/y_train.txt", header = FALSE, sep = "")),
                           unlist(read.csv("test/y_test.txt", header = FALSE, sep = ""))))
levels(dataActivity) = activity

subjectId = unlist(rbind(read.csv("train/subject_train.txt", header = FALSE),
                         read.csv("test/subject_test.txt", header = FALSE)))

#give appropriate feature names
colnames(data) = features

#subset based on mean and standard deviation columns
meanNamesIdx = which(grepl("mean", features)) 
sdNamesIdx = which(grepl("std", features))
data = data[, c(meanNamesIdx, sdNamesIdx)]

#give descriptive names
colnames(data) = gsub("\\()|-", "", colnames(data))
colnames(data) = gsub("mean", "Mean", colnames(data))
colnames(data) = gsub("Freq", "Frequency", colnames(data))
colnames(data) = gsub("^t", "time", colnames(data))
colnames(data) = gsub("^f", "frequency", colnames(data))
colnames(data) = gsub("std", "StandardDev", colnames(data))
colnames(data) = gsub("Acc", "Acceleration", colnames(data))
colnames(data) = gsub("Mag", "Magnitude", colnames(data))

#take mean over each subject over each activity and fix column names
tidyData = aggregate(data, by=list(dataActivity, subjectId), FUN=mean)
colnames(tidyData) = c("activity", "subjectId", colnames(tidyData)[3:ncol(tidyData)])

#write tidy data to txt file as required
write.table(tidyData, "tidyData.txt", row.names=FALSE, sep = ",")


require(plyr)
#setwd("./Getting and Cleaning Data/project/")

# Common frames (activities)
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", sep=" ", header=FALSE, col.names=c("id","activity"))
features <- read.table("./data/UCI HAR Dataset/features.txt", sep=" ", header=FALSE, col.names=c("id","feature"))

# Training data (what, who, features)
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", sep=" ", header=FALSE, col.names=c("activity.id"))
s_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE, col.names=c("subject.id"))
X_train <- read.csv("./data/UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)

# Test data (what, who, features)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", sep=" ", header=FALSE, col.names=c("activity.id"))
s_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE, col.names=c("subject.id"))
X_test <- read.csv("./data/UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)

# Merge Training and Test sets to create one data set for each (what, who, features)
y <- rbind(y_train, y_test); s <- rbind(s_train, s_test); X <- rbind(X_train, X_test)

# labels and column numbers for features to be retained, analyzed (in this case, means and std. dev.'s)
X_fcols <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201
             ,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427
             ,428,429,503,504,516,517,529,530,542,543)

X_fnames <- gsub("\\(\\)","",gsub("-","_",features[X_fcols,][,2]))

# Rename retained features in X, using friendly labels from above, X_fnames
for (column in 1:length(X_fcols)) {
  names(X)[X_fcols[column]]<-X_fnames[column]
}

# Final data set (labels for activities, subjects, retained features), Add Activity Labels
samples <- cbind(y, s, X[X_fcols]); names(samples)[1]<-"activity.id"
samples <- merge(samples, activities, by.x="activity.id", by.y="id", sort=FALSE)

# Creates a second, independent tidy data (called summary) set with the average of each variable 
summary <- ddply(samples, .(activity,subject.id), numcolwise(mean))
if(!file.exists("data")) { dir.create("data") }
write.table(summary, "./data/summary.txt", sep=" ")
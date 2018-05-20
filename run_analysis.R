library(dplyr)
setwd("C:/Users/carla/OneDrive/Coursera/CleaningData/Week4/Project")
UnZip <- unzip("data.zip")
setwd("C:/Users/carla/OneDrive/Coursera/CleaningData/Week4/Project//UCI HAR Dataset")

# Reading raw data

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

features <- read.table("features.txt")

# Merge the training and the test sets in one dataset

X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# Extracts from 561 features the mean and standard deviation 

mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# Use descriptive activity names to name the activities in the data set

X <- X %>% select(mean_std_features)
names(X) <- features[mean_std_features, 2]

# Labels the data set with descriptive variable names

activities <- read.table("activity_labels.txt")
Y[,1] = activities[Y[,1], 2]

names(Y) = c("activity")
names(subject) = c("subject")

# Binding data

data <- cbind(subject, Y, X)

groupedBy_subject_activity <- data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

write.table(groupedBy_subject_activity, "grouped_data.txt", row.name=FALSE)

INTRODUCTION

As described in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

VARIABLES

x_train, y_train, x_test, y_test, subject_train and subject_test have the data from training and test datasets.

X, Y and Subject is a result of binding test and train datasets t.

features is a dataframe from features.txt file.

mean_std_features - dataset, which with average and standart deviation

activities contains 6 types of activity: WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS, SITTING, STANDING,LAYING, to be mapped to Y

data binds X, Y and Subject in one dataset.

groupedBy_subject_activity contains average data, grouped by subject and activity. dplyr package was used.

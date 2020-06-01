library(dplyr)
library(stringr)

## STEP ONE: Merge the test data and the train data to create one dataset

## Read in the test data, activity labels, and subject identifiers
test_df <- read.table("./UCI HAR Dataset/test/X_test.txt")
head(test_df)

test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
head(test_labels)

test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Read in the train data, activity labels, and subject identifiers
train_df <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Read in the names of the 561 variables 
variable_names <- read.table("./UCI HAR Dataset/features.txt")
head(variable_names)

## See that the names of the variables are listed in column 2 of variable_names
## Apply the variable names to the data using colnames

colnames(test_df) <- as.character(variable_names[,2])
colnames(train_df) <- as.character(variable_names[,2])

## Apply the activity labels to the test data, and give the new column a name
test_df <- cbind(test_labels, test_df)
colnames(test_df)[1] <- "activity_label"

## Apply the activity labels to the train data
train_df <-cbind(train_labels, train_df)
colnames(train_df)[1] <- "activity_label"

## Apply the subject identifiers to the test data
test_df <- cbind(test_subjects, test_df)
colnames(test_df)[1] <- "subject_id"

## Apply the subject identifiers to the train data
train_df <- cbind(train_subjects, train_df)
colnames(train_df)[1] <- "subject_id"

## Row bind the test data and the train data into one dataset
all_data <- rbind(test_df, train_df)

## STEP TWO: Extract only the measures of mean and standard deviation

## Examine the names of the variables 
names(all_data)

## Based on the names, I am deciding to extract the columns that explicitly indicate 
## that either "mean()" or "std()" were applied to the measure.
## As a result of this decision, I am choosing NOT to include different types of 
## mean measures that appear, such as "meanFreq()" or "gravityMean".

## Get columns that contain exactly mean()
mean_cols <- all_data[ , grepl( "\\bmean()\\b" , names(all_data) ) ]

## Get columns that contain exactly std()
std_cols <- all_data[ , grepl("\\bstd()\\b", names(all_data))]

## Bind these columns together to create the subset of mean and std variables
subset_df <- cbind(mean_cols, std_cols)

## Put back the activity labels and subject identifiers on the subset_df

labels <- all_data[, 1:2]
subset_df <- cbind(labels, subset_df)

## STEP THREE: Give the activity labels their descriptive names

## Look at the activity labels
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity_names

## Replace the numerical values in the "activity_label" column of subset_df with
## their descriptive name

subset_df$activity_label[subset_df$activity_label == 1] <- "WALKING"
subset_df$activity_label[subset_df$activity_label == 2] <- "WALKING_UPSTAIRS"
subset_df$activity_label[subset_df$activity_label == 3] <- "WALKING_DOWNSTAIRS"
subset_df$activity_label[subset_df$activity_label == 4] <- "SITTING"
subset_df$activity_label[subset_df$activity_label == 5] <- "STANDING"
subset_df$activity_label[subset_df$activity_label == 6] <- "LAYING"

head(subset_df)

## STEP FOUR: Give the variables descriptive names

## This was already done in step one, when the variable names supplied in features.txt were 
## read in and applied to the data sets. Previously, the variables appeared as V1, V2, V3, et cetera.
## Further information about each variable is located in features_info.txt.
## Making the column names any longer than those given would make the dataframe harder to read and use.

## STEP FIVE: Create a new dataframe that provides the average of each variable, 
## by activity and subject

## Convert subset_df to a dplyr table
final_df <- tbl_df(subset_df)

## Group the data by subject and activity
by_subject_act <- group_by(subset_df, subject_id, activity_label)

## Find the averages of each variable
averages_df <- summarise_all(by_subject_act, mean)
averages_df

## Save the table of averages to a file
write.table(averages_df, file="./UCI HAR Dataset/summary_data.txt")

## To read the summary data use
## data <- read.table("./UCI HAR Dataset/summary_data.txt", header=TRUE)
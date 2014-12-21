

## download raw data file

if (!file.exists("rawdata.zip")) {
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "rawdata.zip", method = "curl")
	  library(tools)            
	   sink("download_metadata.txt")
        print("Download date:")
        print(Sys.time() )
        print("Download URL:")
        print(fileUrl)
        print("Downloaded file Information")
        print(file.info("rawdata.zip"))
        print("Downloaded file md5 Checksum")
        print(md5sum("rawdata.zip"))
        sink()
        }

## Unzip raw data file

unzip("rawdata.zip")


## Read test data

test.subject.name <- file.path("./UCI HAR Dataset/test/subject_test.txt")
test.subject <- read.table(test.subject.name)
test.activity.name <- file.path("./UCI HAR Dataset/test/Y_test.txt")
test.activity <- read.table(test.activity.name)
test.data <- file.path("./UCI HAR Dataset/test/X_test.txt")
TestData <- read.table(test.data)

## Combine test data
TestTable <- cbind(test.subject, test.activity, TestData)

## Read training data
train.subject.name <- file.path("./UCI HAR Dataset/train/subject_train.txt")
train.subject <- read.table(train.subject.name)
train.activity.name <- file.path("./UCI HAR Dataset/train/Y_train.txt")
train.activity <- read.table(train.activity.name)
train.data <- file.path("./UCI HAR Dataset/train/X_train.txt")
TrainData <- read.table(train.data)

## Combine train data
TrainTable <- cbind(train.subject, train.activity, TrainData)


## Bind train and test files.
subjects <- rbind(train.subject, test.subject)
activities <- rbind(train.activity, test.activity)
readings<- rbind(TrainTable, TestTable)

## Load column headers for table
all.features <- file.path("./UCI HAR Dataset","features.txt")
features <- read.table(all.features)
features <- features[,2]


# Add Subject and Activity Column to column headers
features <- c("Subject", "Activity", as.character(features))



# Add column headers to data set
names(readings) <- features

# Choose the columns with mean or standard deviation and put in data set
Chosen.Columns <- grep("mean|std", names(readings))
Chosen.Columns <- append(c(1, 2), Chosen.Columns)
FinalData <- readings[Chosen.Columns]

# Convert list of activities to factors
FinalData$Activity <- as.factor(FinalData$Activity)

# Get activity names
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activityLabels <- (activityLabels[,2])

# Give activity names factor levels
levels(FinalData$Activity) <- activityLabels

# Rename some features to make names more descriptive
names(FinalData) <- gsub("BodyBody", "Body", names(FinalData))
names(FinalData) <- gsub("^t", "MeanTime", names(FinalData))
names(FinalData) <- gsub("^f", "MeanFreq", names(FinalData))

# Reshape Data to make tidy data set with  with the average of each variable for each activity and each subject

library(reshape2)
FinalMelt <- melt(FinalData, id = c("Subject", "Activity"),
measure.vars = names(FinalData)[-c(1, 2)])
tidyTable <- dcast(FinalMelt, Subject + Activity ~ variable, mean)


# Write tidy data to tidydata.txt file

tidyData <- file("./tidydata.txt", "w")
write.table(tidyTable, file=tidyData, row.names = FALSE
)
close(tidyData)



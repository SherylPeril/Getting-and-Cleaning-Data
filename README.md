Getting-and-Cleaning-Data-Final-Project
=======================================
---
title: "ReadMe"
author: "STR"
date: "December 19, 2014"
output: html_document
---
#This Read Me file is for the Tidy Data Set Created for the Coursera "Getting and Cleaning Data" Course Project

### Raw data description:
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

The assignment was to do the following:

You should create one R script called run_analysis.R that does the following. 

    1.  Merges the training and the test sets to create one data set.
    2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
    3.  Uses descriptive activity names to name the activities in the data set
    4.  Appropriately labels the data set with descriptive variable names. 

    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

NOTE:  I interpreted #2 as meaning any measurement name with "std" or "mean" in it.

Please use the following R Commands to read this tidyData.txt file:

  data <- read.table(file_path, header = TRUE) 
  View(data)

According to the Class Discussion Forum the definition of an appropriate Tidy Data Set is:

  "Either a wide or a long form of the data is acceptable if it meets the tidy data principles of week 1 (Each variable you measure should be in one column, Each different observation of that variable should be in a different row)."
  
  ##Data Download info
  
  "Download date:"
[1] "2014-12-18 13:18:42 PST"
[1] "Download URL:"
[1] "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

  ###How the script works
  
  The run_analysis.R can be run by using the following command from your working directory:
  
  source("run_analysis.R")

The source follows these steps:

1.  Downloads the raw data zipfile
2.  Unzips the raw data files
3.  Reads in and merges all of the data.  This includes
    Test data:
    * subject_test.txt  (list of subjects in test experiment)
    * Y_test.txt (list of activities each subject performed)
    * X_test.txt (test experiment outcomes)
    
    These three test data sets are then merged using cbind()
    
    Train data:
    * subject_train.txt  (list of subjects in train experiment)
    * Y_train.txt (list of activities each subject performed)
    * X_train.txt (train experiment outcomes)
    
    These three train data sets are then merged using cbind()
  
  Next, the train and test data are combined using rbind()
  
  Features.txt was loaded as the column headers from the experiment outcomes.
  
    2.  The combined data was then subsetted to only include columns with "mean" or "std" in the column header outcome names.
    
    3. The subsetted data was then reshaped to create a tidy data set withwith the average of each variable for each activity and each subject.
    
    4.  The tidy data were output into a file called "tidydata.txt"

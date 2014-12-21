---
title: "Codebook.md"
author: "STR"
date: "December 20, 2014"
output: html_document
---

#Codebook for tidydata.txt

Tidydata.txt contains the results of the Final Project for the Class "Getting and Cleaning Data"  


#Raw Data Description

Raw data included the Subjects of the study (numeric), the Activities that the Subjects participated in (numeric that were transformed into text description) and the features that were measured.  The following description of features comes from features_info.txt in raw data set ((https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip): 
  
  Feature Selection 
  =================
  
  The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
  
  Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
  
  Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
  
  These signals were used to estimate variables of the feature vector for each pattern:  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
  
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
  
  The set of variables that were estimated from these signals are: 
  
  mean(): Mean value
  std(): Standard deviation
  mad(): Median absolute deviation 
  max(): Largest value in array
  min(): Smallest value in array
  sma(): Signal magnitude area
  energy(): Energy measure. Sum of the squares divided by the number of values. 
  iqr(): Interquartile range 
  entropy(): Signal entropy
  arCoeff(): Autorregresion coefficients with Burg order equal to 4
  correlation(): correlation coefficient between two signals
  maxInds(): index of the frequency component with largest magnitude
  meanFreq(): Weighted average of the frequency components to obtain a mean frequency
  skewness(): skewness of the frequency domain signal 
  kurtosis(): kurtosis of the frequency domain signal 
  bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
  angle(): Angle between to vectors.
  
  Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
  
  gravityMean
  tBodyAccMean
  tBodyAccJerkMean
  tBodyGyroMean
  tBodyGyroJerkMean
  
    The complete list of raw variables of each feature vector is available in 'features.txt'

#Data description of tidydata.txt

After merging the data sets together to include Subject, Activity (transformed from numeric to character description) and features, I extracted the data related to only those features that included "mean" or "std" in the name.  Next, per the assigment, I took the mean of each of those values and presented it in a tidy data set with the average of each variable for each activity and each subject.  Data column names are shown below.  

The names of the features from the original data set were changed to make them more clear, and to clarify that these values are means.

There are no units, as the output data are means of normalized values.

Subject
Activity
MeanTimeBodyAcc-mean()-X
MeanTimeBodyAcc-mean()-Y
MeanTimeBodyAcc-mean()-Z
MeanTimeBodyAcc-std()-X
MeanTimeBodyAcc-std()-Y
MeanTimeBodyAcc-std()-Z
MeanTimeGravityAcc-mean()-X
MeanTimeGravityAcc-mean()-Y
MeanTimeGravityAcc-mean()-Z
MeanTimeGravityAcc-std()-X
MeanTimeGravityAcc-std()-Y
MeanTimeGravityAcc-std()-Z
MeanTimeBodyAccJerk-mean()-X
MeanTimeBodyAccJerk-mean()-Y
MeanTimeBodyAccJerk-mean()-Z
MeanTimeBodyAccJerk-std()-X
MeanTimeBodyAccJerk-std()-Y
MeanTimeBodyAccJerk-std()-Z
MeanTimeBodyGyro-mean()-X
MeanTimeBodyGyro-mean()-Y
MeanTimeBodyGyro-mean()-Z
MeanTimeBodyGyro-std()-X
MeanTimeBodyGyro-std()-Y
MeanTimeBodyGyro-std()-Z
MeanTimeBodyGyroJerk-mean()-X
MeanTimeBodyGyroJerk-mean()-Y
MeanTimeBodyGyroJerk-mean()-Z
MeanTimeBodyGyroJerk-std()-X
MeanTimeBodyGyroJerk-std()-Y
MeanTimeBodyGyroJerk-std()-Z
MeanTimeBodyAccMag-mean()
MeanTimeBodyAccMag-std()
MeanTimeGravityAccMag-mean()
MeanTimeGravityAccMag-std()
MeanTimeBodyAccJerkMag-mean()
MeanTimeBodyAccJerkMag-std()
MeanTimeBodyGyroMag-mean()
MeanTimeBodyGyroMag-std()
MeanTimeBodyGyroJerkMag-mean()
MeanTimeBodyGyroJerkMag-std()
MeanFreqBodyAcc-mean()-X
MeanFreqBodyAcc-mean()-Y
MeanFreqBodyAcc-mean()-Z
MeanFreqBodyAcc-std()-X
MeanFreqBodyAcc-std()-Y
MeanFreqBodyAcc-std()-Z
MeanFreqBodyAcc-meanFreq()-X
MeanFreqBodyAcc-meanFreq()-Y
MeanFreqBodyAcc-meanFreq()-Z
MeanFreqBodyAccJerk-mean()-X
MeanFreqBodyAccJerk-mean()-Y
MeanFreqBodyAccJerk-mean()-Z
MeanFreqBodyAccJerk-std()-X
MeanFreqBodyAccJerk-std()-Y
MeanFreqBodyAccJerk-std()-Z
MeanFreqBodyAccJerk-meanFreq()-X
MeanFreqBodyAccJerk-meanFreq()-Y
MeanFreqBodyAccJerk-meanFreq()-Z
MeanFreqBodyGyro-mean()-X
MeanFreqBodyGyro-mean()-Y
MeanFreqBodyGyro-mean()-Z
MeanFreqBodyGyro-std()-X
MeanFreqBodyGyro-std()-Y
MeanFreqBodyGyro-std()-Z
MeanFreqBodyGyro-meanFreq()-X
MeanFreqBodyGyro-meanFreq()-Y
MeanFreqBodyGyro-meanFreq()-Z
MeanFreqBodyAccMag-mean()
MeanFreqBodyAccMag-std()
MeanFreqBodyAccMag-meanFreq()
MeanFreqBodyAccJerkMag-mean()
MeanFreqBodyAccJerkMag-std()
MeanFreqBodyAccJerkMag-meanFreq()
MeanFreqBodyGyroMag-mean()
MeanFreqBodyGyroMag-std()
MeanFreqBodyGyroMag-meanFreq()
MeanFreqBodyGyroJerkMag-mean()
MeanFreqBodyGyroJerkMag-std()
MeanFreqBodyGyroJerkMag-meanFreq()


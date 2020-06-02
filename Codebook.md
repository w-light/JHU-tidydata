---
title: "Summary Data (Mean, Standard Deviation) Derived from the Human Activity Recognition Using Smartphones Dataset Version 1.0"
author: "Whitney Light"
date: "02/06/2020"
output: 
  html_document: 
    keep_md: yes
---


The dataset "summary_data.txt" is derived from the Human Activity Recognition Using Smartphones Dataset Version 1.0 by Jorge L. Reyes-Ortiz et. al. (2012), which is available at <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

The original dataset provided 10299 observations of 561 variables, which were divided into a training set (30%) and test set (70%). The observations consisted of records of bodily movement captured by a smartphone (Samsung Galaxy S II) equipped with an accelerometer and gyroscope, worn at the waist by 30 participants. Each participant wore the smartphone while performing six different physical activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING). Multiple observations were recorded for each activity by each participant.

This summary dataset presents the averages of a subset of 66 of the original variables over the entire 10299 observations (test and training sets were merged). Specifically, the average by particpant and by activity was calculated for every variable in the original dataset that captured a mean or standard deviation.

The original variables that are averaged in the summary dataset are:

 [1] "tBodyAcc-mean()-X"          
 [2] "tBodyAcc-mean()-Y"           
 [3] "tBodyAcc-mean()-Z"          
 [4] "tGravityAcc-mean()-X"        
 [5] "tGravityAcc-mean()-Y"        
 [6] "tGravityAcc-mean()-Z"       
 [7] "tBodyAccJerk-mean()-X"       
 [8] "tBodyAccJerk-mean()-Y"       
 [9] "tBodyAccJerk-mean()-Z"      
[10] "tBodyGyro-mean()-X"          
[11] "tBodyGyro-mean()-Y"          
[12] "tBodyGyro-mean()-Z"         
[13] "tBodyGyroJerk-mean()-X"     
[14] "tBodyGyroJerk-mean()-Y"     
[15] "tBodyGyroJerk-mean()-Z"     
[16] "tBodyAccMag-mean()"          
[17] "tGravityAccMag-mean()"      
[18] "tBodyAccJerkMag-mean()"     
[19] "tBodyGyroMag-mean()"         
[20] "tBodyGyroJerkMag-mean()"    
[21] "fBodyAcc-mean()-X"          
[22] "fBodyAcc-mean()-Y"          
[23] "fBodyAcc-mean()-Z"           
[24] "fBodyAccJerk-mean()-X"      
[25] "fBodyAccJerk-mean()-Y"      
[26] "fBodyAccJerk-mean()-Z"       
[27] "fBodyGyro-mean()-X"         
[28] "fBodyGyro-mean()-Y"         
[29] "fBodyGyro-mean()-Z"          
[30] "fBodyAccMag-mean()"         
[31] "fBodyBodyAccJerkMag-mean()"  
[32] "fBodyBodyGyroMag-mean()"     
[33] "fBodyBodyGyroJerkMag-mean()"
[34] "tBodyAcc-std()-X"          
[35] "tBodyAcc-std()-Y"           
[36] "tBodyAcc-std()-Z"          
[37] "tGravityAcc-std()-X"        
[38] "tGravityAcc-std()-Y"       
[39] "tGravityAcc-std()-Z"       
[40] "tBodyAccJerk-std()-X"       
[41] "tBodyAccJerk-std()-Y"       
[42] "tBodyAccJerk-std()-Z"      
[43] "tBodyGyro-std()-X"         
[44] "tBodyGyro-std()-Y"         
[45] "tBodyGyro-std()-Z"         
[46] "tBodyGyroJerk-std()-X"     
[47] "tBodyGyroJerk-std()-Y"     
[48] "tBodyGyroJerk-std()-Z"     
[49] "tBodyAccMag-std()"          
[50] "tGravityAccMag-std()"      
[51] "tBodyAccJerkMag-std()"     
[52] "tBodyGyroMag-std()"        
[53] "tBodyGyroJerkMag-std()"    
[54] "fBodyAcc-std()-X"          
[55] "fBodyAcc-std()-Y"     
[56] "fBodyAcc-std()-Z"          
[57] "fBodyAccJerk-std()-X"      
[58] "fBodyAccJerk-std()-Y"      
[59] "fBodyAccJerk-std()-Z"       
[60] "fBodyGyro-std()-X"         
[61] "fBodyGyro-std()-Y"        
[62] "fBodyGyro-std()-Z"         
[63] "fBodyAccMag-std()"         
[64] "fBodyBodyAccJerkMag-std()" 
[65] "fBodyBodyGyroMag-std()"     
[66] "fBodyBodyGyroJerkMag-std()"
   

Note: Each row in 'summary_data.txt' represents averages calculated for 1 subject
performing 1 type of activity.

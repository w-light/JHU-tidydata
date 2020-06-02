# JHU-tidydata

The file 'run_analysis.R' provides a script for modifying the Human Activity Recognition Using Smartphones Dataset
Version 1.0 by Jorge L. Reyes-Ortiz et. al. (2012) and producing a new dataset 'summary_data.txt' consisting of averaged variables.

The script does the following:
1 - merges the orginal test and training sets into a complete set of observations identified by subject and activity, 
2 - labels each column with descriptive headers,  
3 - replaces activity codes with descriptive names,  
4 - creates a subset that includes only variables that record a mean() or std(),  
5 - groups the subset by subject and activity, and calculates an average for the selected variables, and  
6 - writes the averaged subset to a new file called 'summary_data.txt'.  

Note: In R, read in 'summary_data.txt' using read.table()

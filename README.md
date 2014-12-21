<h1>Getting and Cleaning Data</h1>

<h2>Course Project</h2>

We were given the data set collected from the accelerometers from the Samsung 
Galaxy S smartphone. The original intent for the data was to be used to 
determine activities of the individuals based on accelerometer data. However, in 
this project we were to make a run_analysis.R script which manipulates and 
processes the data, without analyzing the meaning of the data set.

The run_analysis.R script should do the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each 
measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set 
with the average of each variable for each activity and each subject.

<h2>Running the script</h2>

Download the data from the following <a 
href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%
20Dataset.zip">link</a>. Unzip and put the run_analysis.R script in the same 
directory where you unzipped the zip file or set the appropriate path in first line of the code. Start R and
run the analysis by typing:

    source("run_analysis.R")
    
You should get "tidyData.txt" file as an output.

Check the CodeBook.md for variable names and transformations made explanations.
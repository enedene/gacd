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

Put the run_analysis.R script in the same directory as <i>UCI HAR Dataset</i> directory 
and run the script by typing:

    source("run_analysis.R")
    
into R console. If it doesn't work, check the path, it's possible that you need to adopt the
path for your specific OS.

You should get "tidyData.txt" file as an output.

Check the CodeBook.md for variable names and transformations made explanations.
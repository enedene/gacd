<h1>Codebook</h1>

<h2>Raw Data</h2>

All the variable names and explanations can be found in the following files in the raw data set:

README.txt
features.txt
features_info.txt
activity_labels.txt

<h2>Transformations of the Raw Data</h2>

The train directory contains the following files <i>X_train.txt</i>, 
<i>y_train.txt</i> and <i>subject_train.txt</i>.

<i>X_train.txt</i> contains many different measurements done by accelerometer.

<i>y_train.txt</i> is the type of activity made, designated by activity ID (check the activity_labels.txt file)

<i>subject_train.txt</i> contains the subject ID.

These data were merged by column.

Test directory contains the same number of columns and different number of rows as training data. 
After merging the test data set by columns, the train and test data were merged by rows.

Each column containing the word <i>main</i> or <i>std</i> was selected in subsetting the raw data. Also
a more verbose names were given to each column, for example replacing <i>Acc></i> with <i>Acceleration</i>
or <i>t</i> with <i>time</i>.

And finally we calculated the mean of each of the selected columns by used and physical activity.
For example, subject with id 1, had mean of timeBodyAccelerationMeanX = 0.2773308 for walking activity,
and 0.2612376 while sitting.

Finally, the script returns the <i>tidyData.txt</i> file in directory set in first line of the code containing
the transformed data set.
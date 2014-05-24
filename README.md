## README for Coursera Getting and Cleaning Data Project
========================================================

### Introduction to Project

This project produces a tidy data set from the _Human Activity Recognition Using Smartphones Dataset, Version 1.0_.  The starting-point data can be found at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  Further description of the study which produced the data can be found at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The README.txt from the dataset describes the experiments, which obtained measurements from a group of 30 volunteers performing six activities \(laying, sitting, standing, walking, walking upstairs, and walking downstairs\) while wearing a Samsung Galaxy S II smartphone.  The data was then processed \(described in the README.txt\) to provide triaxial acceleration and estimated body acceleration, triaxial angular velocity from the gyroscope, a 561-feature vector with time and frequency domain variables, and identifiers for the subject and activity, for each record.  This data was the starting point for the Coursera project.  The goal of this project is to produce a tidy dataset aggregating mean and standard deviation variable measurements for each combination of subject participant and activity type.

### Acknowlegement

The following publication is hereby acknowledged per the original researchers' README.txt from the links above:

>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

>This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

>Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


### R Script To Produce Tidy Dataset

The R script is included in the repo as run\_analysis.R.  The script requires starting-point data (see link above) to be in the working directory. The script also requires the **plyr** package. To load run\_analysis.R from the working directory, use the following command in R:

source\("run\_analysis.R"\)

To produce the tidy dataset, use the following command:

tidyDataset <- cleandata\(\)

This function may take over a minute to run.  The result is a dataframe of 180 observations for 68 variables, one row for each combination of subject participant and activity type.

Note that a tab-delimited file tidyDataset.txt has been submitted for grading in the Coursera environment.

### Actions of the R Script

As mentioned above, the goal of this project is to produce a tidy dataset aggregating mean and standard deviation variable measurements for each combination of subject participant and activity type.  The script performs the following actions:

1. The script reads the data from the working directory, unzipping the files if necessary.
2. Data files are read into the R workspace as dataframes for the subjects, activities, and measurement records for both training and testing data.
3. Variables are cleaned up to replace activity numbers with activity types in English, words to replace abbreviations, and to eliminate characters such as dashes, parens, and underlines.
4. Labels are added to the variables \(columns\) of each dataframe. 
5. Dataframes for subject, activities, and measurement records are combined to produce dataframes for training and testing using a column bind process **cbind**. Only the 66 selected mean and standard deviation measurement variables are included from this point forward.
6. The resulting training and testing dataframes are combined using a row binding process **rbind**.
7. This dataframe is then aggregated to display means by subject and activity type for each of the 66 selected measurement variables.  Results are sorted in ascending order by subject.

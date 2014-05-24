## Codebook for Coursera Getting and Cleaning Data Project
==========================================================

### Files Included in the Original Dataset

The researchers split the data into a training set and a testing set.  The following files are included in the dataset linked above, as described by the researchers:

* README.txt
* features\_info.txt: Shows information about the variables used on the feature vector.
* features.txt: List of all features.
* activity\_labels.txt: Links the class labels with their activity name.
* train/X\_train.txt: Training set.
* train/y\_train.txt: Training labels.
* test/X\_test.txt: Test set.
* test/y\_test.txt: Test labels.
* train/subject\_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* test/subject\_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

* Files containing inertial signals as described in README.txt 

The original dataset was downloaded on Sun May 18 14:56 2014.

### Selection of Variables for Tidy Dataset

From the 561 variables in the original dataset, variables that represent the mean or standard deviation of a measurement were selected, in conformance to the Johns Hopkins Coursera course requirments.  Judgment was applied in the selection of the variables.  Specifically excluded from the tidy dataset are variables representing the weighted average of frequency components \("meanFreq"\) and angle-related variables \(for example, "angle\(tBodyAccMean,gravity\)"\), since they do not represent straight means of the observed data.  The result winnows the 561 variables in the original dataset to 66 variables plus two variables to identify the subject participant and activity type.  Note that the inertial signal files were not used in preparing the tidy dataset.

### Variable Naming Conventions

Variable names are displayed using a form of camel case for ease of reading.

The following terms used in variable names are briefly described below.  A more complete technical description can be found in features/_info.txt from the original dataset.

* time:  in time domain
* frequency: in frequency domain

* Body: from body movements
* Gravity: attributed to gravity

* Acceleration: linear acceleration signal
* Gyro: angular velocity signal

* Jerk: signals derived from linear acceleration and angular velocity
* Magnitude: represents the magnitude of the acceleration, gyro, or jerk signals

* XYZ: denote signals in X, Y, and Z directions

* Mean: mean value
* StandardDeviation: standard deviation value

### List of Variables

|    | Variable Names                                          | Type      | Range                          | Comments                                                     |
|----|---------------------------------------------------------|-----------|--------------------------------|--------------------------------------------------------------|
| 1  | subject                                                 | integer   | 1 to 30                        | identifier assigned to each participant subject in the study |
| 2  | activityType                                            | character | laying                         | activity performed by each subject                           |
|    |                                                         |           | sitting                        |                                                              |
|    |                                                         |           | standing                       |                                                              |
|    |                                                         |           | walking                        |                                                              |
|    |                                                         |           | walkingDownstairs              |                                                              |
|    |                                                         |           | walkingUpstairs                |                                                              |
| 3  | timeBodyAccelerationMeanX                               | numeric   | normalized and bounded -1 to 1 |                                                              |
| 4  | timeBodyAccelerationMeanY                               | numeric   | normalized and bounded -1 to 1 |                                                              |
| 5  | timeBodyAccelerationMeanZ                               | numeric   | normalized and bounded -1 to 1 |                                                              |
| 6  | timeBodyAccelerationStandardDeviationX                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 7  | timeBodyAccelerationStandardDeviationY                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 8  | timeBodyAccelerationStandardDeviationZ                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 9  | timeGravityAccelerationMeanX                            | numeric   | normalized and bounded -1 to 1 |                                                              |
| 10 | timeGravityAccelerationMeanY                            | numeric   | normalized and bounded -1 to 1 |                                                              |
| 11 | timeGravityAccelerationMeanZ                            | numeric   | normalized and bounded -1 to 1 |                                                              |
| 12 | timeGravityAccelerationStandardDeviationX               | numeric   | normalized and bounded -1 to 1 |                                                              |
| 13 | timeGravityAccelerationStandardDeviationY               | numeric   | normalized and bounded -1 to 1 |                                                              |
| 14 | timeGravityAccelerationStandardDeviationZ               | numeric   | normalized and bounded -1 to 1 |                                                              |
| 15 | timeBodyAccelerationJerkMeanX                           | numeric   | normalized and bounded -1 to 1 |                                                              |
| 16 | timeBodyAccelerationJerkMeanY                           | numeric   | normalized and bounded -1 to 1 |                                                              |
| 17 | timeBodyAccelerationJerkMeanZ                           | numeric   | normalized and bounded -1 to 1 |                                                              |
| 18 | timeBodyAccelerationJerkStandardDeviationX              | numeric   | normalized and bounded -1 to 1 |                                                              |
| 19 | timeBodyAccelerationJerkStandardDeviationY              | numeric   | normalized and bounded -1 to 1 |                                                              |
| 20 | timeBodyAccelerationJerkStandardDeviationZ              | numeric   | normalized and bounded -1 to 1 |                                                              |
| 21 | timeBodyGyroMeanX                                       | numeric   | normalized and bounded -1 to 1 |                                                              |
| 22 | timeBodyGyroMeanY                                       | numeric   | normalized and bounded -1 to 1 |                                                              |
| 23 | timeBodyGyroMeanZ                                       | numeric   | normalized and bounded -1 to 1 |                                                              |
| 24 | timeBodyGyroStandardDeviationX                          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 25 | timeBodyGyroStandardDeviationY                          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 26 | timeBodyGyroStandardDeviationZ                          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 27 | timeBodyGyroJerkMeanX                                   | numeric   | normalized and bounded -1 to 1 |                                                              |
| 28 | timeBodyGyroJerkMeanY                                   | numeric   | normalized and bounded -1 to 1 |                                                              |
| 29 | timeBodyGyroJerkMeanZ                                   | numeric   | normalized and bounded -1 to 1 |                                                              |
| 30 | timeBodyGyroJerkStandardDeviationX                      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 31 | timeBodyGyroJerkStandardDeviationY                      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 32 | timeBodyGyroJerkStandardDeviationZ                      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 33 | timeBodyAccelerationMagnitudeMean                       | numeric   | normalized and bounded -1 to 1 |                                                              |
| 34 | timeBodyAccelerationMagnitudeStandardDeviation          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 35 | timeGravityAccelerationMagnitudeMean                    | numeric   | normalized and bounded -1 to 1 |                                                              |
| 36 | timeGravityAccelerationMagnitudeStandardDeviation       | numeric   | normalized and bounded -1 to 1 |                                                              |
| 37 | timeBodyAccelerationJerkMagnitudeMean                   | numeric   | normalized and bounded -1 to 1 |                                                              |
| 38 | timeBodyAccelerationJerkMagnitudeStandardDeviation      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 39 | timeBodyGyroMagnitudeMean                               | numeric   | normalized and bounded -1 to 1 |                                                              |
| 40 | timeBodyGyroMagnitudeStandardDeviation                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 41 | timeBodyGyroJerkMagnitudeMean                           | numeric   | normalized and bounded -1 to 1 |                                                              |
| 42 | timeBodyGyroJerkMagnitudeStandardDeviation              | numeric   | normalized and bounded -1 to 1 |                                                              |
| 43 | frequencyBodyAccelerationMeanX                          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 44 | frequencyBodyAccelerationMeanY                          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 45 | frequencyBodyAccelerationMeanZ                          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 46 | frequencyBodyAccelerationStandardDeviationX             | numeric   | normalized and bounded -1 to 1 |                                                              |
| 47 | frequencyBodyAccelerationStandardDeviationY             | numeric   | normalized and bounded -1 to 1 |                                                              |
| 48 | frequencyBodyAccelerationStandardDeviationZ             | numeric   | normalized and bounded -1 to 1 |                                                              |
| 49 | frequencyBodyAccelerationJerkMeanX                      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 50 | frequencyBodyAccelerationJerkMeanY                      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 51 | frequencyBodyAccelerationJerkMeanZ                      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 52 | frequencyBodyAccelerationJerkStandardDeviationX         | numeric   | normalized and bounded -1 to 1 |                                                              |
| 53 | frequencyBodyAccelerationJerkStandardDeviationY         | numeric   | normalized and bounded -1 to 1 |                                                              |
| 54 | frequencyBodyAccelerationJerkStandardDeviationZ         | numeric   | normalized and bounded -1 to 1 |                                                              |
| 55 | frequencyBodyGyroMeanX                                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 56 | frequencyBodyGyroMeanY                                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 57 | frequencyBodyGyroMeanZ                                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 58 | frequencyBodyGyroStandardDeviationX                     | numeric   | normalized and bounded -1 to 1 |                                                              |
| 59 | frequencyBodyGyroStandardDeviationY                     | numeric   | normalized and bounded -1 to 1 |                                                              |
| 60 | frequencyBodyGyroStandardDeviationZ                     | numeric   | normalized and bounded -1 to 1 |                                                              |
| 61 | frequencyBodyAccelerationMagnitudeMean                  | numeric   | normalized and bounded -1 to 1 |                                                              |
| 62 | frequencyBodyAccelerationMagnitudeStandardDeviation     | numeric   | normalized and bounded -1 to 1 |                                                              |
| 63 | frequencyBodyAccelerationJerkMagnitudeMean              | numeric   | normalized and bounded -1 to 1 |                                                              |
| 64 | frequencyBodyAccelerationJerkMagnitudeStandardDeviation | numeric   | normalized and bounded -1 to 1 |                                                              |
| 65 | frequencyBodyGyroMagnitudeMean                          | numeric   | normalized and bounded -1 to 1 |                                                              |
| 66 | frequencyBodyGyroMagnitudeStandardDeviation             | numeric   | normalized and bounded -1 to 1 |                                                              |
| 67 | frequencyBodyGyroJerkMagnitudeMean                      | numeric   | normalized and bounded -1 to 1 |                                                              |
| 68 | frequencyBodyGyroJerkMagnitudeStandardDeviation         | numeric   | normalized and bounded -1 to 1 |                                                              |

### Transformations and Manipulations of the Data

The original dataset contains 10299 feature vectors of 561 variables derived from the experiments.  From this data, 66 variables containing mean or standard deviation calculations are selected.  After combining training and testing data, the data is recast to aggregate the variables by participant subject and activity type.  The tidy dataset contains means of the aggregated variables for each combination of participant subject and activity type. 

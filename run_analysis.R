cleandata <- function(){
  ## Check for presence of dataset.
  ##   
  if (!file.exists("UCI HAR Dataset")) {
    if (!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
      stop("was expecting HAR Dataset folder or zip file")
    } else {
      unzip("getdata-projectfiles-UCI HAR Dataset.zip")
    }
  }
  ##
  ## Read data files into data fromes
  xtrain <- read.table("./UCI HAR Dataset/train/x_train.txt")
  ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
  subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  xtest <- read.table("./UCI HAR Dataset/test/x_test.txt")
  ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
  subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  features <- read.table("./UCI HAR Dataset/features.txt")
  ##
  ## Clean up activitylabels
  activitylabels[,2] <- c("walking", "walkingUpstairs", "walkingDownstairs", "sitting", "standing", "laying")
  activitylabels[,2] <- sub("_","",activitylabels[,2])
  names(activitylabels) <- c("activityNumber", "activityType")
  ##
  ## Clean up features
  ## First identify features to be used later - mean() and std() calculations
  MeanAndStdColNums<-grep("((mean)|(std))\\()", features$V2)
  MeanAndStdColLogical<-grepl("((mean)|(std))\\()", features$V2)
  featuresclean <- features
  featuresclean$V2 <- sub("^t", "time", features$V2)
  featuresclean$V2 <- sub("^f", "frequency", featuresclean$V2)
  featuresclean$V2 <- sub("BodyBody", "Body", featuresclean$V2)
  featuresclean$V2 <- gsub("\\(","", featuresclean$V2)
  featuresclean$V2 <- gsub("\\)","", featuresclean$V2)
  featuresclean$V2 <- gsub("-", "", featuresclean$V2)
  featuresclean$V2 <- gsub("mean", "Mean", featuresclean$V2)
  featuresclean$V2 <- gsub("std", "StandardDeviation", featuresclean$V2)
  featuresclean$V2 <- gsub("Acc", "Acceleration", featuresclean$V2)
  featuresclean$V2 <- gsub("Mag", "Magnitude", featuresclean$V2)
  featuresclean$V2 <- gsub(",", "", featuresclean$V2)
  ##
  ## Apply features as variable names (column headers) for xtest and xtrain
  names(xtest) <- featuresclean$V2
  names(xtrain) <- featuresclean$V2
  ##
  ## Add activity labels to ytest and ytrain and add variable names
  ytrain[, "V2"] <- activitylabels[ytrain[, "V1"], "activityType"]
  ytest[, "V2"] <- activitylabels[ytest[, "V1"], "activityType"]
  ynames <- c("activityNumber", "activityType")
  names(ytrain) <- ynames
  names(ytest) <- ynames
  ##
  ## Add variable name to subjecttrain and subjecttest
  names(subjecttrain) <- "subject"
  subjecttrain$TrainOrTest <- "train"
  names(subjecttest) <- "subject"
  subjecttest$TrainOrTest <- "test"
  ##
  ## Combine subjects, activities, and measurements into dataframes for train and for test
  traindata <- cbind(subjecttrain, ytrain, xtrain[,featuresclean[MeanAndStdColNums,2]])
  testdata <- cbind(subjecttest, ytest, xtest[,featuresclean[MeanAndStdColNums,2]])
  ##
  ## Combine testing and training data
  combineddata <- rbind(traindata,testdata)
  combineddata[,3]<-NULL
  combineddata[,2] <- NULL
  ## Convert subject from int type to char type for use in aggregate() function
  combineddata$subject <- as.character(combineddata$subject)
  ## Calculate means by subject and activityType and re-order the dataset by Subject
  cleanset <- aggregate(. ~ subject + activityType, data = combineddata, mean)
  cleanset$subject <- as.integer(cleanset$subject)
  require(plyr)
  cleanset <- arrange(cleanset, subject)
}

## Functions
## Function to read and filter Test Data
getTestData <- function(activityLabels){        
        ## Read test data
        testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
        names(testSubjects) <- "Subject"
        testX <- read.table("UCI HAR Dataset/test/X_test.txt")
        testY <- read.table("UCI HAR Dataset/test/Y_test.txt")
        activityIDNames <- merge(testY,activityLabels,by.x="V1",by.y="ActivityID")        
        testMergedwithActivityIDNames <- cbind(activityIDNames,testX)       
        fullTestData <- cbind(testSubjects,testMergedwithActivityIDNames)
        write.table(fullTestData, file ="fullTestData.csv",row.names=FALSE,sep=",", append=FALSE)        
        fullTestData
}

## Function to read and filter Train Data
getTrainData <- function(activityLabels){
        ## Read training data
        trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
        names(trainSubjects) <- "Subject"
        trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
        trainY <- read.table("UCI HAR Dataset/train/Y_train.txt")
        activityIDNames <- merge(trainY,activityLabels,by.x="V1",by.y="ActivityID")
        trainMergedwithActivityIDNames <- cbind(activityIDNames,trainX)
        fullTrainData <- cbind(trainSubjects,trainMergedwithActivityIDNames)
        write.table(fullTrainData, file ="fullTrainData.csv",row.names=FALSE,sep=",", append=FALSE)
        fullTrainData
}

## Function to read and add descriptive labels
getFeatureLabels <- function(){
        labels <- read.table("UCI HAR Dataset/features.txt")
        labels$V3 <- labels$V2
        labels$V3 <- gsub("^t", "Time", labels$V3)
        labels$V3 <- gsub("^f", "FrequencyDomainSignals", labels$V3)
        labels$V3 <- gsub("Acc", "Accelerometer", labels$V3)
        labels$V3 <- gsub("Gyro", "Gyroscope", labels$V3)
        labels$V3 <- gsub("Mag", "Magnitude", labels$V3)
        labels$V3 <- gsub("-mean\\(\\)", "-Mean", labels$V3)
        labels$V3 <- gsub("-std\\(\\)", "-StandardDeviation", labels$V3)
        labels$V3 <- gsub("-mad\\(\\)", "-MedianAbsoluteDeviation", labels$V3)
        labels$V3 <- gsub("-max\\(\\)", "-LargestValueInArray", labels$V3)
        labels$V3 <- gsub("-min\\(\\)", "-SmallestValueInArray", labels$V3)
        labels$V3 <- gsub("-sma\\(\\)", "-SignalMagnitudeArea", labels$V3)
        labels$V3 <- gsub("-energy\\(\\)", "-EnergyMeasure", labels$V3)
        labels$V3 <- gsub("-iqr\\(\\)", "-InterquartileRange", labels$V3)
        labels$V3 <- gsub("-entropy\\(\\)", "-SignalEntropy", labels$V3)
        labels$V3 <- gsub("-arCoeff\\(\\)", "-AutorregresionCoefficients", labels$V3)
        labels$V3 <- gsub("-correlation\\(\\)", "-CorrelationCoefficient", labels$V3)
        labels$V3 <- gsub("-maxInds", "-IndexOfFrequencyWithLargestMagnitude", labels$V3)
        labels$V3 <- gsub("-meanFreq\\(\\)", "-WeightedAverageMeanFrequency", labels$V3)
        labels$V3 <- gsub("-skewness\\(\\)", "-Skewness", labels$V3)
        labels$V3 <- gsub("-kurtosis\\(\\)", "-Kurtosis", labels$V3)
        labels$V3 <- gsub("-bandsEnergy\\(\\)", "-BandsEnergy", labels$V3)
        labels$V3 <- gsub("angle", "AngleBetweenVectors", labels$V3)       
        labels$V3 <- gsub("\\(tBody", "\\(TimeBody", labels$V3)       
        labels$V3 <- gsub("gravity", "Gravity", labels$V3)       
        ##write.table(labels, file ="labels.csv",row.names=FALSE,sep=",", append=FALSE)
        labels
}

## Read meta data
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activityLabels) <- c("ActivityID","ActivityDescription")
featureLabels <- getFeatureLabels()
testData <- getTestData(activityLabels)
trainData <- getTrainData(activityLabels)
combinedData <- rbind(trainData, testData)
print(ncol(combinedData))
names(combinedData) <- c("Subject","ActivityID","ActivityDescription",as.character(featureLabels$V2))
stdMeanColumns <- featureLabels[grep("mean\\(\\)|std\\(\\)", featureLabels$V2),]
ass <- c(as.character(stdMeanColumns[,2]))
print(ass)
filteredData <- combinedData[,c("Subject","ActivityID","ActivityDescription",c(as.character(stdMeanColumns[,2])))]
names(filteredData) <- c("Subject","ActivityID","ActivityDescription",as.character(stdMeanColumns$V3))
write.table(filteredData, file ="HARTidyDataset1.txt",row.names=FALSE,sep=" ", append=FALSE)

#Second Data Set
print(ncol(combinedData))
names(combinedData) <- c("Subject","ActivityID","ActivityDescription",as.character(featureLabels$V3))
combinedData[, c(4:564)] <- sapply(combinedData[, c(4:564)], as.character)
combinedData[, c(4:564)] <- sapply(combinedData[, c(4:564)], as.numeric)
summarizedData <- aggregate(combinedData[, c(4:564)], by = list(combinedData$Subject, combinedData$ActivityID,combinedData$ActivityDescription), FUN = "mean", rm.na=TRUE)
colnames(summarizedData)[c(1,2,3)] <- c("Subject","ActivityID","ActivityDescription")
write.table(summarizedData, file ="summarizedData.csv",row.names=FALSE,sep=",", append=FALSE)


#set wd folder
setwd("D:/Documents/coursera/R_Directory")   

#step2:   I always prefer to read only if the information required, therefore my privilege to do Step 2 before Step 1
#         file containing a list of all measurements of mean() and Standard deviation(),Fields    
#         where the mean and standard deviation is contained within the name itself is not included
#         This file is attached in addition, there is also a list of fields in the file READMY

measurements <- read.table("D:/Documents/coursera/Getting and Cleaning Data/project/UCI HAR Dataset/measurements.txt")
mesurV<-as.numeric(measurements$V3)

#read onle the 66  measurements... colClasses = mycols
mycols<-rep('NULL',561)
mycols[c(mesurV)] <- NA  #pick onle the measurements  mean() & std() [66]

#read the relativ data from x & y train files 

Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt",colClasses = mycols, as.is = TRUE ,stringsAsFactors = FALSE,na.strings = "Not Available")
Ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", as.is = TRUE ,stringsAsFactors = FALSE,na.strings = "Not Available")

#read the relativ data from x & y test files 

Xtest  <- read.table("./UCI HAR Dataset/test/X_test.txt",colClasses = mycols, as.is = TRUE ,stringsAsFactors = FALSE,na.strings = "Not Available")
Ytest  <- read.table("./UCI HAR Dataset/test/y_test.txt", as.is = TRUE ,stringsAsFactors = FALSE,na.strings = "Not Available")

#read the subject train and test files 

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", as.is = TRUE ,stringsAsFactors = FALSE,na.strings = "Not Available")
subject_test  <- read.table("./UCI HAR Dataset/test/subject_test.txt", as.is = TRUE ,stringsAsFactors = FALSE,na.strings = "Not Available")

# step 1 Merges the training and the test sets to create one data set.

X <- rbind(Xtrain,Xtest)
Y <- rbind(Ytrain,Ytest)
subject <-rbind(subject_train,subject_test)

data <- cbind(subject,Y,X) 

#Add activity lables 
activity <- c("walking","walkingUp","walkingDown","sitting","standing","laying")
data[,2] <- factor(data[,2], labels = activity)

#adit the measurement Names  like 't' beckm 'Time'...
a<-gsub("t","Time",measurements$V4)
a<-gsub("f","FFT",a)
a<-gsub("sTimed","StandardDeviation",a)
a<-gsub("mean","Mean",a)
a<-gsub("-|\\()", "",a)
a<-gsub("Acc","Acceleration",a)
a<-gsub("Gyro","Gyroscope",a)

#add column neme for Subjects and ActivityLabels
cnames <- c("Subjects","ActivityLabels",a)
colnames(data) <- cnames

#end of step 4 "data" is tid data 1


library(plyr)

#aggregatr the data by ActivityLabels and Subjects  whit Function 
tidy_data <- aggregate(data, by = list(Activity=data$ActivityLabels, Subjects=data$Subjects), FUN = "mean", simplify = TRUE)

#Delete unnecessary fields
tidy_data<-tidy_data[c(-3,-4)]

write.table(tidy_data, file = "tidy_data.txt", col.names = colnames(tidy_data))



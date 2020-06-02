sum(is.na(data$steps))
## [1] 2304
Replace NA values with the mean of the steps

data$steps[is.na(data$steps)]<-mean(data$steps,na.rm=TRUE)
Here are some rows of new data set

head(data)
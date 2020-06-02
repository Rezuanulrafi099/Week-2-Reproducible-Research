avg_steps<-aggregate(data$steps,by=list(data$interval),FUN=mean,na.rm=TRUE)

colnames(avg_steps)<-c("interval","steps")

library(ggplot2)
## Warning: package 'ggplot2' was built under R version 3.3.2
ggplot(aes(x=interval,y=steps),data=avg_steps)+geom_line()
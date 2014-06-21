run_analysis<-function() {
  xtr<-read.csv("./UCI HAR Dataset/train/X_train.txt",header = FALSE, sep = " ")
  xte<-read.csv("./UCI HAR Dataset/test/X_test.txt",header = FALSE, sep = " ")
  md<-merge(xtr,xte,all=TRUE)
  md<<-md[,c(2,4,12,14)]
  colnames(md) <- c("sitting mean","sitting stddev","standing mean","standing stddev")
  write.csv(md, file ="./UCI HAR Dataset/td.txt",row.names=FALSE)
  ms<<-colMeans(md,na.rm=TRUE)
  write.csv(ms, file ="./UCI HAR Dataset/td2.txt",row.names=FALSE)
}



setwd("C:\\Users\\it24103785\\Desktop\\IT24103785")
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Weight.kg.)
popdev<-sd(Weight.kg.)

#Q2
samples<-c()
n<-c()
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

#Q3
samplemean<-mean(s.means)
samplesd<-sd(s.means)


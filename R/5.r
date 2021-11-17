data()
head(mtcars)


r<-nrow(mtcars)
l<-ncol(mtcars)


x<-data.frame(mtcars)
automatic<-0
manual<-0
for(i in 1:r)
  ifelse(x[i,9]==0,automatic<-automatic+1, manual<-manual+1)
ifelse(automatic>manual, print("more automatic"), print("more manual"))


hp<-x[, 4]
w<-x[, 6]
scatter.smooth(hp,w,span = 2/3, degree = 1, family = c("symmetric", "gaussian"))
mpg<-x[, 1]
hist(mpg, breaks=12, col="lightblue",border="pink")
x[, 2]<-as.integer(x[, 2])
x[, 8]<-as.integer(x[, 8])
x[, 9]<-as.integer(x[, 9])
newmtcars<-data.frame(x[, 2],x[, 8],x[, 9])


mtcars[(mtcars$cyl <=5),]
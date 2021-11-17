
var<-c(rep("control",3),rep("ear control",3),rep("fake ear control",4))
var
xfact<-factor(var)
xfact
nlevels(xfact)
length(xfact)


x<-c(rep("a",25),rep("b",15),rep("c",58))
x
length(x)
table1<-data.frame(x)
table1

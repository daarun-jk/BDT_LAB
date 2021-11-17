n <- as.integer(readline(prompt = "enter the number of students"))

usn <- vector(mode = "character", length = n)
marks <- vector(mode = "numeric", length = n)
name <- vector(mode = "character", length = n)

print("enter the student details")

for(i in 1:n){
  usn[i] <- as.character(readline())
  marks[i] <- as.numeric(readline())
  name[i] <- readline()
}  
x <- data.frame(usn,marks,name)
print(x)

age <- vector(mode = "integer", length = n)
print("enter the age of all the students")
for(i in 1:n)
  age[i] <- as.integer(readline())

x <- cbind(x,age)

print("students who are more than 20yrs and have got more than 85 marks are ")
for(i in 1:n)
  if(x[i, ][2] > 85)
    if(x[i, ][4] > 20)
      print(x[i, ])



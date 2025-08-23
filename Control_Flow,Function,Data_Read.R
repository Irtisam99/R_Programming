# IF STATEMENT

x<-21
if(x>20){
  print("x is greater than 20")
}
#IF else statement
x<-3
if(x>8){
  print("xis greater than 8")
  
}else{
  print("x is less than 8")
}

#if else if else ladder
score <- 75
if (score >= 90) {
  print("Grade A")
} else if (score >= 80) {
  print("Grade B")
} else if (score >= 70) {
  print("Grade C")
} else {
  print("Grade F")
}

# FOR loop
for(i in 1:10)
  print(paste("Iteratio",i))

#repeat loop with break
i<-1
repeat{
  print(i)
  i<-i+1
  if(i>6)
    break
}

#next statement
for(i in  1:5){
  if(i==2)next
  print(i)
}
  
#break statement
for(i in 1:10){
  if(i==5)
    break
print(i)
}


# BUILT in functions
# mean()

numb<-c(1,2,5,8,9,2,3)
mean(numb)
  
sum(numb)

length(numb)
  
pi<-3.1416
round(pi,3)
  
paste("Irtisam","Alavi")



#USER DEFINED FUNCTIONS
addnum<-function(a,b){
  return(a+b)
}

addnum(5,5)
  

#EVEN OR ODD

even<-function(x){
  if(x%%2==0){
    return (TRUE)
  }else{
    return (FALSE)
  }

}
even(6)
  
# function with default paramaeter

hello<-function(name="user"){
  paste("hello",name)
  
}
hello()
hello("JOHN")
  
  
# LAMBDA function with sapply()
numb2<-1:10
square<-sapply(numb2,function(x) x^2)
print(square)

#Reading a CSV File
data <- read.csv("E:\\Sem9\\Data Science\\Lab\\Lab2\\sample_dataset.csv")
head(data)  

  
#Reading a Text File (tab-delimited)
data <- read.table("E:\\Sem9\\Data Science\\Lab\\Lab2\\sample_tab_delimited.txt", header = TRUE, sep = "\t")
head(data)


#Reading Data from a URL
url <- "https://raw.githubusercontent.com/uiuc-cse/data-fa14/gh-pages/data/iris.csv"
data <- read.csv(url)
head(data)
  
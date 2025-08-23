 a <- 134L	# Can define variables
 b <- 34L	# using "<-" operator to set values
 c <- 52L
 print(typeof(c))
 print(a * b * c)   # output using print()
 print(a*b)

x<--5
y<-4
m<-3.567
print(abs(x))
print(sqrt(y))
print(ceiling(m))
print(floor(m))

name1<-"ALAVI"
name2<-"irtisam"
print(tolower(name1))
print(toupper(name2))
print(strsplit(name1,split="V"))

set1<-c(1,2,3,4,4)
print(set1)

print(min(set1))
print(max(set1))
print(sum(set1))
print(mean(set1))	# it returns mean
print(mode(set1))	# it returns mode
print(range(set1))	# it returns range
print(sd(set1))	# it returns standard deviation of an object


str<-"HI irtisam"
str1<-"How are you"
print(nchar(str))
print(paste(str,str1))

str2<-"This is a multiline string,
And this is to used the test how multiline string works,
ANd it is working just fine      "

print(str2)
cat(str2,"\n")

str3<-"My full Name is \"Irtisam Farui Alavi\", You can call me Alavi."

cat(str3)
cat("\n")


cat("Backslash: \\\n")
cat("New Line:\nThis is on a new line\n")
cat("Carriageeeeee  hello:\rOverwrite\n")
cat("Tab Example:\tTabbed text\n")
cat("Backspace:\n123\b45\n")



#DATA STRUCTURES..........................
#VECTORS

#Numeric Vector
test_vector <-c(1,2,3,4,5)
print(test_vector)

#Character vector
character_vector <-c("guava","Banana","cerry","hello")
print(character_vector)

#Logical Vector
logical<-c(FALSE,TRUE,FALSE,TRUE)
print(logical)

#Arithmetic Operations
vector1<-c(1,2,3)
vector2<-c(9,8,7)

sum<-vector1+vector2
product<-vector1*vector2

print(sum)
print(product)


# Accessing Elements in a Vector
# Create a vector
number_vec <- c(5,10,2,8,9,12)

# Access elements using index (1-based index)
print(number_vec[2])  

# Access multiple elements
print(number_vec[c(1,2,3)])

# Access elements using a condition
print(number_vec[number_vec < 9])  



# Modifying a Vector
# Modify an element
number_vec[2]<-14
print(number_vec)
# Append new elements

number_vec<-c(number_vec,90,100)
print(number_vec)


# Vector Functions
vecfunc<-c(8,10,2,0,80)

# Length of the vector
print(length(vecfunc))

# Sum of all elements
print(sum(vecfunc))

# Mean (average) of elements
print(mean(vecfunc))

# Sorting a vector

sort_vec<-sort(vecfunc,decreasing=FALSE)
print(sort_vec)


# Sequence and Repetition in Vectors
# Sequence from 1 to 20

sequence_vec<-seq(1,20,by=3)
print(sequence_vec)
# Repeat elements

repeat_vec<-rep(c(1,3,5),times=5)
print(repeat_vec)


#MATRICES....................

#creating a 3by3 matrix   columwise by default
matrixfirst<-matrix(2:10,nrow=3,ncol=3)
print(matrixfirst)
#Row Wise
matrix2<-matrix(1:9,nrow=3,byrow = TRUE)
print(matrix2)

# Naming Rows and Columns
# Creating a matrix

matrix3<-matrix(1:9,nrow=3)
rownames(matrix3)<-c("Row1","Row2","Row3")
colnames(matrix3)<-c("col1","col2","col3")


print(matrix3)


# Accessing Elements in a Matrix
matrix4<-matrix(5:13,nrow=3)
print(matrix4)

print(matrix4[1,2])

print(matrix4[2,])

print(matrix4[,3])


# Matrix Arithmetic
mat1 <- matrix(2:5, nrow = 2)
mat2 <- matrix(6:9, nrow = 2)

print(mat1)
print(mat2)
# Matrix addition
summatrix<-mat1+mat2
print(summatrix)

# Matrix multiplication (element-wise)
product_mat <- mat1 * mat2
print(product_mat)

# Matrix multiplication (dot product)
dotprod_mat <- mat1 %*% mat2  # %*% for matrix multiplication
print(dotprod_mat)


#transpose
matrixtranspose<-matrix(1:9,nrow=3)
transpose<-t(matrixtranspose)
print(matrixtranspose)
print(transpose)

# Inverse for square matrix
square<-matrix(c(1,2,3,4),nrow=2)
inverse<-solve(square)
print(square)
print(inverse)



#ARRAYS....................................

# creating an array
array1<-array(2:20,dim=c(3,3,2))
print(array1)


# Accessing Elements in an Array
# Create a 3x3x2 array
arr <- array(1:18, dim = c(3, 3, 2))

# Access element 
print(arr[3, 3, 2])  

# Access entire 2nd row from Layer 1
print(arr[2, , 1])

# Access entire 3rd column from Layer 2
print(arr[, 3, 2])

#Performing Operations on Arrays
# Creating two 3x3x2 arrays
array3 <- array(1:18, dim = c(3, 3, 2))
array4 <- array(19:36, dim = c(3, 3, 2))

print(array3)
print(array4)

# Element-wise addition
sum_array <- array3+array4
print(sum_array)

# Element-wise multiplication
prod_arr <- array3*array4
print(prod_arr)



# Applying Functions to Arrays
# Creating an array
array8 <- array(2:19, dim = c(3, 3, 2))
print(array8)
# Sum of all elements in the array
print(sum(array8))

# Mean of all elements
print(mean(array8))

# Apply function to each row (margin = 1)
apply(array8, MARGIN = 1, FUN = sum)

# Apply function to each column (margin = 2)
apply(array8, MARGIN = 2, FUN = mean)


# DATA FRAMES......................
dataframes<-data.frame(
  ID=c(1,2,3,4),
  Name=c("Alavi","Irtisam","faruqui","john"),
  Age = c(23, 30, 89, 24),
  Score = c(90, 20, 91.2, 88),
  Passed = c(TRUE, FALSE, TRUE, TRUE)
  
)
print(dataframes)


# Accessing Elements in a Data Frame
# Access a single column
print(dataframes$Name)  

# Access a specific row 
print(dataframes[3, ])  

# Access a specific element 
print(dataframes[3, "Passed"])  

# Access multiple columns
print(dataframes[, c("Name", "Score")])  

# Access multiple rows
print(dataframes[2:3, ])  


# adding a new column
dataframes$grade<-c("C","D","E","F")
print(dataframes)


# Filter students who passed
passed_students <- dataframes[dataframes$Passed == TRUE, ]
print(passed_students)

# Filter students with Score > 90
high_scorers <- dataframes[dataframes$Score > 90, ]
print(high_scorers)


# Sorting by Age (Ascending)
df_sorted <- dataframes[order(dataframes$Age), ]
print(df_sorted)

# Sorting by Score (Descending)
df_sorted_desc <- dataframes[order(dataframes$Score), ]
print(df_sorted_desc)


# Changing a value (Changing johns Score to 10)
dataframes$Score[dataframes$Name == "john"] <- 10
print(dataframes)

# Renaming column names
colnames(dataframes) <- c("StudentID", "StudentName", "Student_Age", "Exam_Score", "Passed_Exam", "Final_Grade")
print(dataframes)

# Remove a column
dataframes$Grade <- NULL
print(dataframes)

# Remove a row (removing row 2)
dataframes <- dataframes[-2, ]
print(dataframes)


# Get summary statisti
summary(dataframes)

# Get structure of the data frame
str(dataframes)



#LIST.............................

list1<-list(
  Name="Alavi",
  Age=20,
  Scores=c(10,20,90),
  Passed=FALSE
  
)
print(list1)

# Access by index
print(list1[[1]])  

# Access by name
print(list1$Scores)  

# Access specific elements within a list item
print(list1$Scores[2])  

# Change an element
list1$Age <- 25
print(list1$Age)  # Output: 26

# Add a new element
list1$Country <- "BD"
print(list1)

# Remove an element
list1$Passed <- NULL
print(list1)


# Creating a list with a matrix and a data frame
list2 <- list(
  Numbers = c(1, 2, 3, 4),
  Matrix = matrix(1:9, nrow = 3),
  DataFrame = data.frame(ID = c(11, 12), Name = c("irtisam","alavi"))
)

# Print the list
print(list2)

# Access elements inside the matrix
print(list2$Matrix[2, 3])  # Access row 2, column 3



list3 <- list(A = 1:5, B = "Hello")
list4 <- list(C = c(TRUE, FALSE), D = matrix(1:4, nrow = 2))
print(list3)
print(list4)
# Merge lists
merged_list <- c(list3, list4)
print(merged_list)


# Convert list to data frame
list_to_df <- data.frame(
  Name = c("Irtisam", "Alavi"),
  Age = c(20, 27),
  Score = c(90, 92)
)

print(list_to_df)


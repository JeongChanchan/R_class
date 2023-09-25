vector_1 <- c("aa",2,3)
vector_1
list_1 <- list("a")

matrix(data = c(1,2,3,4,5,6,7,8),nrow = 2,ncol = 4)

a1= matrix(c(1,2,3,4,5,6), ncol = 2)
a2= matrix(c(1,2,3,4,5,6),nrow = 2)
a3= matrix(c(1,2,3,4,5,6),nrow = 2,byrow = T)
a4= matrix(c(1,2,3,4,5,6),nrow = 2,byrow = F)
a1
a2
a3
a4

m =matrix(c(1,2,3,4),nrow = 2)
rownames(m) = c("Row1","Row2")
colnames(m) = c("Col1","Col2")
m

row_names <- c("Row1","Row2")
col_names <- c("Col1","Col2")
dimnames(m) = list(row_names,col_names)
m

matrix(data = c(1,2,3,4,5,6), nrow = 2,ncol = 3)
array(data = c(1,2,3,4,5,6),dim = c(2,3,2))

a=array(data=c(1,2,3,4,5,6), dim=c(2,2))
b=array(data=c(7,8,9,10,11,12), dim=c(2,2))        
cbind(a,b)
rbind(a,b) 

my_arry <- array(1:12,dim =c(2,3,2))
row_names <- c("Row1","Row2")
col_names <- c("Col1","Col2","Col3")
slice_names <- c("Slice1","Slice2")

dimnames(my_arry) <- list(row_names,col_names,slice_names)
my_arry
#이름을 붙이고 싶지 않을 경우
dimnames(my_arry) <- list(NULL,col_names,slice_names)

library(stringr)
a <- "abcdefg"
substr(a,1,2)

a1 <-list(1,2,3,4,5,6)
a1[1]
a1[1:3]
a1[-1]
typeof(a1[1])  
a1[[1]]
typeof(a1[[1]])
mode(a1[[1]])

a2 <-c(1,2,3,4,5,6)
a2[1:3]
a2[-1]
a2[[1]]
typeof(a2[1])
typeof(a2[[1]])

a1[1]
a2[1]
a1[1:3]
a2[1:3]

a=array(data=c(1,2,3,4,5,6),dim =c(2,3))
a
a[2]
a[1,2]
a[1:2]
a[1:2,2]

my_list <- list("apple",3.14,c(1,2,3),T)
my_list[[3]][2]
my_list[3] #여전히 리스트 형태를 유지하며, 해당원소가 단독으로 반환
my_list[[3]] #원소의 값 자체가 반환되는 것이 아니라 값을 나타내는 테이터 타입으로 반환
my_vec <- c("apple",3.14,c(1,2,3),T)
my_vec[[3]][2]
my_vec[3]
my_vec[[3]]

my_arry <- array(c(5,3,1,5,7,8,10),dim =c(2,3)

#문제 5와 16을 추출하시오                
a=array(data=c(1:20), dim=c(2,5,2))
a
a[1,3,1]
a[2,3,2]


city <- c("Seoul","Busan","Daegu","Seoul","Busan","Daegu","Ulsan")
pm25 <- c(18,21,21,17,8,11,25)

df <- data.frame(city = city,pm25=pm25)
df[1:3,1:2]

#문제풀기
A <- c("A","B","B","B","B","A","A","A","A","A","B","B")
B <- c(5000,12000,13000,8000,9000,3000,5000,4000,4500,6000,8000,8500)
C <- c(2500,5000,6000,5500,7000,4600,3000,2500,3400,4700,6400,4400)
df_ABC <- data.frame(A =A,B=B,C=C)
df_ABC

my_array <- array(c(1:32),dim=c(4,8))
my_array

my_array_1 <- array(c(1:32),dim=c(2,4,2,2))
my_array_1
my_array_1[2,2,1,2]
my_array_1[2,3,2,2]

sum_array_1 <- array(c(1:12),dim=c(4,3))
sum_array_2 <- array(c(13:24),dim=c(4,3))
cbind(sum_array_1,sum_array_2)
rbind(sum_array_1,sum_array_2)

X <- cbind(sum_array_1,sum_array_2)
Y <- rbind(sum_array_1,sum_array_2)
row_namesX <- c("Row1","Row2","Row3","Row4")
col_namesX <- c("Col1","Col2","Col3","Col4","Col5","Col6")
dimnames(X) <- list(row_namesX,col_namesX)
row_namesY <- c("Row1","Row2","Row3","Row4","Row5","Row6","Row7","Row8")
col_namesY <- c("Col1","Col2","Col3")
dimnames(Y) <- list(row_namesY,col_namesY)
X
Y

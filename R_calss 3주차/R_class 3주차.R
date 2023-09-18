a =c(1,2,3,4,5,6)
sum(c(1,2,3,4,5,6,7,8,9,10))
seq(from= 1, to =5, by=2)
seq(1,5, by=2)
seq(0,100, lenght.out=1000)

a<-3
print(a)
print(3)
print("Hello")

paste(3,4,5,6,7)
print(paste(3,4,5,6,7))

paste0(3+4,4,5,6,7)
print(paste(3+4,4,5,6,7))

paste(3,4,5,6,7, sep = '-')
paste0(3+4,4,5,6,7, sep = '-')

b= "정찬"
c= 50
print(a)
print(paste("a",a,"a"))
print(paste(b,"님의 점수는" ,c,"점 입니다"))

sample (x,size,replace = FALSE, prob = NULL)
sample(10) #1부터 10까지를 10개의 임의로 섞어 추출
sample(45,6) #1부터 45에서 6개를 임의로 추출
sample(10,3,replace=TRUE) #동일한 확률 (1/10)로 복원추출
sample(10,3,prob=(1:10)/55) #10개중 3개를 임의로 복원 추출하는데 추출될 확률은 (1:10)/55로 각각다름
sample(10,3,prob=c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05,0.05))

runif(n,min,max) #최소와 최대 사이의 균일 분포에서 n개의 연속형 난수를 생성
rnorm(n,평균,sd) #주어진 평균과 표준편차 sd를 갖는 정규분포에서 n개의 난수를 생성
rbinom(n,size,prob) # 주어진 시행 횟수와 성공 가능성 prob를 사용하여 이항 분포에서 n개의 난수를 생성함

runif(5,1,100)
rnorm(5,50,20)
rbinom(5,100,0.1)

#특정 변수 제거
a=10
b=20
c=30
rm(a) #a라는 변수 제거
rm(list=c("a","c")) #a,b변수 삭제
rm(list =ls()) #모든 값 삭제

# -기본적인 작업 디렉터리를 변경하여 저장 및 불러오기를 할 수 있음
#- getwd() 함수로 작업 디렉러리를 확인
#- setwd("원하는 디렉터리 경로")함수로 작업 디렉터리 변경

getwd()
setwd("C:/Users/User/Documents/")

#문제
seq(1,100,by=5)
rep(c(1,2,3,4,5), times=100)
rep(c(1,2,3,4,5), each=100)

sample(10,5)
sample(49,6)
sample(10,3,replace=TRUE)
sample(10,3,prob=(1:10)/55)
sample(10,3,prob=c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05,0.05))

runif(100,50,100)
rnorm(200,100,15)
sum(rbinom(500,1,0.1))

List_1 <- list(1,2,3)
List_2<- list(1.6,2.3,3.5)
 
typeof(List_1)
mode(List_2)
fruit <- list("apple","banana","orange",1,1.5,T)
fruit[3]
mode(fruit)

vector_a <- c(1,2,3)
vector_b <- c(T,F,T)
vector_c <- c("apple","banana","orange",vector_a,vector_b)
mode(vector_a)
mode(vector_c)
vector_a
vector_b
vector_c

mode(List_1)
mode(vector_a)

List_1+List_2
vector_a2 <- c(1,2,3)
vector_a+vector_b
vector_a+vector_a2

my_list <- list("apple",1,3,c(1,3,4),T,vector_a+vector_a2)
my_list

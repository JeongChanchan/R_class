mtcars
#1
vec1 <- c(0:10)
vec1
#2
vec2 <- c(10:20)
vec2
matrix1 <- cbind(vec1,vec2)
matrix1

#3
matr <- matrix(data = vec1,vec2,nrow = 11,ncol = 2)
matr

matr[4,2] <- 100
matr
#4  
vec3 <- c(20: 30)
arr1=array(data=vec1,dim =c(5,2))
arr1
arr2=array(data=vec2,dim =c(5,2))
arr2
arr3=array(data=vec3,dim =c(5,2))
arr3

#5

name <- c('Kim','Park','Lee')
score <- data.frame(이름 = name, 국어 = c(100,80,80), 영어 = c(60,40,80), 수학 = c(50,100,80), 
                    물리 = c(40,30,20), 화학 = c(40,30,20), 생물 = c(40,20,10), 지구과학 = c(40,30,50),stringsAsFactors = F)
score
mean = ((score$국어+ score$영어+ score$수학)/3)
mean
score$mean <- mean
score
score[score$mean >=80,][1]

#6

hospital <- data.frame(병원 = c('A','B','B','B','B','A','A','A','A','A','B','B'),진료금액 = c(5000,12000,13000,8000,9000,3000,5000,4000,4500,6000,8000,8500),
                       처방전금액 = c(2500,5000,6000,5500,7000,4600,3000,2500,3400,4700,6400,4400))
hospital
hospital$sum =( hospital$진료금액 + hospital$처방전금액)                       
hospital

write.csv(hospital,"C:/Users/User/Downloads/실험.csv",row.names = T,fileEncoding= "cp949",)

data<- read.csv("C:/Users/User/Downloads/실험.csv",
                header = T,stringsAsFactor = T,fileEncoding= "cp949")
data

#11
mtcars
mtcars$mpg
mtcars$cyl
mtcars$disp
mtcars$wt
mtcars$qsec

car <- data.frame(mpg = mtcars$mpg,cyl = mtcars$cyl,disp = mtcars$disp,wt =mtcars$wt,qsec = mtcars$qsec)
car
#12
car$qw = (car$wt + car$qsec)
car
#13
typeof(car$mpg)
typeof(car$cyl)
typeof(car$disp)
typeof(car$wt)
typeof(car$qsec)
typeof(car$qw)
평균 : sum(car$mpg)/32
#18
separate(car,col="car_model",into = c("car","model"),sep="-")

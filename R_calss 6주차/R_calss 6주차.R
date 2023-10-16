#데이터 프레임 생성
id= c(1,2,3,4,5)
gender = c("M","F","F","M","M")
major = c("Eng","Math","Com","Eng","Busi")
salary = c(2500 ,2800 ,2500, 3000, 2600)
survey = data.frame(ID =id,Gender = gender, Major =major, Salary= salary,stringsAsFactors = F)

#원하는 값 추출(인덱싱)
head(survey, n=3)
tail(survey,n=3)
survey$Salary
survey[["Salary"]]
survey["Major"]
survey[2]
survey[[2]]
#데이터 프레임 survey에 새로운 데이터 추가
survey
survey$score = c(200,300,400,500,600)
survey
survey$ss=survey$Salary+survey$score
survey

#데이터 변환
mode(survey$ID)
summary(name_age_df)
summary(survey$ID)
survey$ID=as.integer(survey$ID)
survey$ID=as.numeric(survey$ID)
survey$ID=as.factor(survey$ID)
survey$ID=as.logical(survey$ID)
survey$ID=as.character(survey$ID)

#데이터 변수명 변경
names(df)
names(df)[names(df)=="데이터프레임의 변수명"]="뱐환할 변수명"
names(survey)[names(survey)=="ss"]="Salary_sore"
survey

#원하는 데이터 값 추출(인덱싱)
survey[c(1,2)]
survey[c(-1,-2)]
survey[survey$Gender=="F",] #Gender = F인 행만 추출
survey[survey$Major == "Eng"&survey$Salary>2600,] #Major이 Eng이고 Salary >2600인 행추출

#데이터 쪼개기
survey1=data.frame(ID =id[1:3],Gender = gender[1:3], Major =major[1:3], Salary= salary[1:3],stringsAsFactors = F)
survey1
survey2=data.frame(ID =id[4:6],Gender = gender[4:6], Major =major[4:6], Salary= salary[4:6],stringsAsFactors = F)
survey2
rbind(survey1,survey2)
cbind(survey1,survey2)

#subset(데이터 프레임,조건,select=c(도출하고 싶은 변수 명1,도출하고 싶은 변수 명2)
survey_subset <- subset(survey,survey$ID<4)
survey_subset
survey_select <- subset(survey,survey$ID<4,select = c("ID","Gender","score"))
survey_select

#데이터 삭제
survey$Salary_sore <- NULL
survey

#library(tidye) 사용패키지 데이터 나누기 ↓
#separate(데이터 프레임,col="지정한 변수 이름",into = c("생성변수1","생성변수2"),sep="나눌 기준기호")
name_age_df <- data.frame(
  Name = c("Kim Cheo-soo","Lee Cheol-soo","Kim Young-hee","Lee Young-hee",
           "Kim Min-jun","Park min-jun","Kim Ji-young","Park Ji-young"),
  Age = c(20,24,21,24,35,40,34,35),
  stringsAsFactors = F
)
name_age_df
name_age_df <- separate(name_age_df,col="Name",into = c("LastName","FirstName"),sep ="-")
name_age_df

#파일종류

#data <-read.csv("data.csv"(.csv의 경로),header = ?(헤더가 존재하면 T,존재안하면 F) ,stringsAsFactor = ? (문자열이 존재하면 T), fileEncoding=?))
#wrte.csv(데이터프레임,"저장항 경로",row.names =F/T)


data <-read.csv("C:/Users/User/Desktop/실험.csv",
                header = T,stringsAsFactor = T,fileEncoding= "cp949")
data
write.csv(data,"C:/Users/User/Downloads/실험.csv",row.names = T)


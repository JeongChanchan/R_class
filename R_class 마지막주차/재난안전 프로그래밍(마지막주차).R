library(data.table)
hn_2009 <- fread('C:/Users/82104/Desktop/HN_10_12/a.csv')
hn_2010 <- fread('C:/Users/82104/Desktop/HN_10_12/b.csv')
hn_2011 <- fread('C:/Users/82104/Desktop/HN_10_12/c.csv')

combined_df <- rbindlist(list(hn_2009,hn_2010,hn_2011),fill = T)
dim(combined_df)

col = colnames(hn_2009)
col_2009 <- combined_df[,col,with = F]

df <- fread('C:/Users/82104/Desktop/HN_10_12/a.csv')
df_clean <- na.omit(df) #결측치가 1개라도 있으면 날려버리기 때문에 사용잘 안함

df_numeric <- df[,sapply(df,is.numeric),with = F]
df_character <- df[,sapply(df,is.character),with = F]

library(mice)

## mice(데이터,m=,maxit = ,method ="pmm",seed=)
# m: 몇 개의 후보를 추출할 것인가
# maxit : 해당 작업을 몇번 반복할 것인가
# seed: 랜덤으로 일어나는 실행에서 그 값을 고정하는 것
# "pmm"만 시험
imputed_data <- mice(sub_df_numeric, m= 5, maxit = 10, method = "pmm", seed =1235) #결측값 처리
complete_data <- complete(imputed_data,1)
fwrite(complete_data,'C:/Users/82104/Desktop/HN_10_12/정찬.csv')

library(dplyr)

a <- fread('C:/Users/82104/Desktop/HN_10_12/earlyadopter.csv')

#~ifelse(범위값,범위에 해당하는 변한값,변환하고싶은 대상)->하나의 조건에 대해서만 처리 
#mutate(데이터,across(c("변수명1","변수명2","변수명3"),~ifelse(범위값,변환값,변환대상)))
mutate(a,across(c("20s","30s","40s","50s","60s"),~ifelse(.>6.0,"High",.)))

#~case_when : ~case_when(범위 ~ 변환값, TRUE~변환하고 싶은 대상 )
mutate(a,across(c("20s","30s","40s","50s","60s"),~case_when(.>=6.0 ~ 1,.>=2.5&.<6.0 ~2,.<2.5~3,T~.)))

mutate(a,across(c("20s","30s","40s","50s","60s"),~case_when(.>=6.0~"High",.>=2.5 & .<6.0 ~ "Medium",
                                                            .<2.5 ~ "Low",T ~ as.character(.))))

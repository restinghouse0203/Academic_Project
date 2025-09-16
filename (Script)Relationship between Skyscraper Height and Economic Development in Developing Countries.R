#ECON4274 project code
#Name: Au Yik Hau
#SID: 20762422

rm(list=ls())
DATA<-read.csv("ECON4274projectdata.csv")

#summary statistic
summary(data)

#create time lagged variable
library(dplyr)
DATA$sky1 = dplyr::lag(DATA, n=1)
DATA$sky2 = dplyr::lag(DATA, n=2)
DATA$sky3 = dplyr::lag(DATA, n=3)
DATA$sky4 = dplyr::lag(DATA, n=4)
DATA$sky5 = dplyr::lag(DATA, n=5)

#Regression result
m1=lm(rgdp~sky,data=DATA)
m2=lm(rgdp~sky+Fisc+ifru+fix+edu+cul,
      data=DATA)
m3=lm(rgdp~sky1+Fisc+ifru+fix+edu+cul,
      data=DATA)
m4=lm(rgdp~sky2+Fisc+ifru+fix+edu+cul,
      data=DATA)
m5=lm(rgdp~sky3+Fisc+ifru+fix+edu+cul,
      data=DATA)
m6=lm(rgdp~sky4+Fisc+ifru+fix+edu+cul,
      data=DATA)
m7=lm(rgdp~sky5+Fisc+ifru+fix+edu+cul,
      data=DATA)

library(stargazer)
stargazer(m1,m2,m3,m4,m5,m6,m7,
          out="tab.html",type="html",omit.stat=c("f","ser"))

#create more time lagged variable
library(dplyr)
DATA$sky6 = dplyr::lag(DATA, n=6)
DATA$sky7 = dplyr::lag(DATA, n=7)
DATA$sky8 = dplyr::lag(DATA, n=8)

m8=lm(rgdp~sky6+Fisc+ifru+fix+edu+cul,
      data=DATA)
m9=lm(rgdp~sky7+Fisc+ifru+fix+edu+cul,
      data=DATA)
m10=lm(rgdp~sky8+Fisc+ifru+fix+edu+cul,
      data=DATA)

stargazer(m8,m9,m10,
          out="tab.html",type="html",omit.stat=c("f","ser"))


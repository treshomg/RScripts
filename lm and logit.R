#######Загрузка библиотек#########

library("memisc")
library("dplyr")
library("psych")
library("lmtest")
library("sjPlot")
library("sgof")
library("ggplot2")
library("foreign")
library("car")
library("hexbin")
library("sandwich")
library("erer")
library("lmtest")
library("broom")
library("caret")
library("vcd")

#######Загрузка и чистка данных###########

#my_data <- as_data_frame(read.csv("file"))
#str(my_data)
#summary(my_data)

#######Визуализация и предварительный анализ#########
#mosaic(data=my_data, ~***+***,shade=TRUE) # визуализация факторных данных
#qplot()  #geom="violin", geom="boxplot", geom=density"
#plot() 
#ggplot() 
#featureplot() 
#


#######Построение модели##################
#set.seed(***) #для фиксирования случайного деления данных
#in_train <- createDataPartition(my_data$***,p=0.75,list=FALSE)
#training_mydata <- mydata[in_train,] #обучающая выборка
#testing_mydata <- mydata[-in_train,] #тестовая выборка
#model_lm1 <- lm(*** ~ ***, data=training_mydata) #либо data=my_data, если без прогнозирования# построение линейной модели
#model_logit1 <- glm(data=training, *** ~ ***+***,
#            family=binomial(link="logit"), x=TRUE) #либо data=my_data, если без прогнозирования# построение логит модели
#summary(model_lm1)
#summary(model_logit1)
#

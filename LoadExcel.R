setwd("C:/Users/rhaque/OneDrive - THORLABS Inc/Desktop/Learning/Data Science/EdX_DataScience/Course 2")
PLotData<-read.csv("01255-Kclock-check scanlin 20210416.csv", header=FALSE)
library (ggplot2)
ggplot(aes(x=V1, y=V2), data=PLotData)+geom_point()

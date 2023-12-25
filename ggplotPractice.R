library(datasets)
library (ggplot2)
data("mtcars")
head(mtcars,5)
#Add a title
ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")
#change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x="displacement", y= "mpg")

mtcars$vs<-as.factor(mtcars$vs)
#create boxplot
ggplot(aes(x=vs, y=mpg), data=mtcars)+geom_boxplot(alpha=0.3)+theme (panel.background=element_rect(fill='white', color='green')  )
ggplot(aes(x=wt), data=mtcars)+geom_histogram(binwidth = 0.5)+theme (panel.background=element_rect(fill='lightblue', color='green')  )

library(datasets)
data("iris")
library(GGally)
ggpairs(iris,mapping=ggplot2::aes(color=Species))
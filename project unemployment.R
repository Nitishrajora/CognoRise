#Dataset : Unemployment in India

#Loading of dataset in r programming software
my_data=read.csv("C:/Users/NITISH/Downloads/cogno internship/Unemployment in India.csv")
my_data

#view of datset
View(my_data)

#installing necessary packages
install.packages("ggplot2")
library(ggplot2)

#histogram of estimated unemployment rate 
hist(my_data$Estimated.Unemployment.Rate...., 
     main = "Histogram of Unemployment Rates in India",
     xlab = "Unemployment Rate(%)",
     ylab = "Frequency",
     col = "skyblue")

#histogram of estimated employment rate 
hist(my_data$Estimated.Employed, 
     main = "Histogram of Employment Rates in India",
     xlab = "Estimated Employmed",
     ylab = "Frequency",
     col = "pink")

#boxplot of estimated unemployment rate 
boxplot(my_data$Estimated.Unemployment.Rate....,
        main = "Unemployment Rates India",
        xlab = "Boxplot",
        ylab = "Unemployment Rate (%)")

#boxplot of estimated employment rate
boxplot(my_data$Estimated.Employed,
        main = "Estimated Employed",
        xlab = "Boxplot",
        ylab = "No.of Employed")

#ggplot of given dataset
ggplot(data = my_data, aes(x = Date, y = Estimated.Unemployment.Rate....)) +
  geom_line() +
  labs(title = "Trend of Unemployment Rates in India",
       x = "Year",
       y = "Unemployment Rate")


ggplot(my_data) +
  geom_point(mapping = aes(x = Date, y = Estimated.Unemployment.Rate...., color = Region))


ggplot(my_data) +
  geom_point(mapping = aes(x = Date, y = Estimated.Employed, color = Region))


ggplot(my_data) +
  geom_point(mapping = aes(x = Date, y = Estimated.Labour.Participation.Rate...., color = Region))

ggplot(my_data) +
  geom_point(aes(Estimated.Labour.Participation.Rate...., log(my_data$Estimated.Employed))) +


  #This linear regression will tell us about the relationship between estimated unemployment
  # rate ans estimated labour participation rate and how the are related
ggplot(my_data,aes(x=Estimated.Unemployment.Rate....,y=Estimated.Labour.Participation.Rate....))+
  geom_point()+
  geom_smooth(method="lm",se= FALSE,color= "red")+
  labs(title = "Linear regression")
  

#This linear regression will tell us about the relationship between estimated employed
# rate ans estimated labour participation rate and how the are related
ggplot(my_data,aes(x=Estimated.Employed,y=Estimated.Labour.Participation.Rate....))+
  geom_point()+
  geom_smooth(method="lm",se= FALSE,color= "magenta")+
  labs(title = "Linear regression")

























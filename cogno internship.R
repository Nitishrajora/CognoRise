# Data Analysis on EMPLOYEE SALARIES FOR DIFFERENT JOB ROLES

#Installing necessary packages
install.packages("ggplot2")
library(ggplot2)

#Importing of Data:
my_data2<-read.csv("C:/Users/VAIBHAV/Downloads/cogno work/ds_salaries.csv")
my_data2

#View of Data:
View(my_data2)

#Mean and median of employee's salary
mean(my_data2$salary)
median(my_data2$salary)

#Mean and median of employee's salary in USD
mean(my_data2$salary_in_usd)
median(my_data2$salary_in_usd) 

#summary function will tell us about all statistical measures of a column
summary(my_data2$salary)
summary(my_data2$salary_in_usd)

#Histogram of work year of employees
hist(my_data2$work_year,xlab = "work year",main = "Histogram of work year")

#Boxplot of Employees salaries in USD 
boxplot(my_data2$salary_in_usd,main = "Boxplot of salaries in USD",ylab = "salaries in USD")

#Histogram of employee's salary
log0<-log(my_data2$salary)
hist(log0,xlab = "Salary",main = "Histogram of salaries")

#Histogram Of employee's salary in USD
log1<-log(my_data2$salary_in_usd)
hist(log1,xlab = "salaries in USD",main = "Histogram of salaries in USD")

#ggplots
ggplot(my_data2) +
  geom_point(mapping = aes(x = salary_currency, y = log0, color = job_title))+
  labs(y = "salaries in log form")

ggplot(my_data2) +
  geom_bar(mapping = aes(x = employment_type))+
  labs(y = "Frequency")

ggplot(my_data2) +
  geom_bar(mapping = aes(x = employee_residence))+
  labs(y = "Frequency")

ggplot(my_data2) +
  geom_bar(mapping = aes(x = work_year))

ggplot(my_data2) +
  geom_bar(mapping = aes(x = experience_level))

ggplot(my_data2) +
  geom_boxplot(mapping = aes(x = job_title, y = log0)) +
  coord_flip() +
  labs(x = "Job titles",
       y = "salaries (in log form)")

ggplot(my_data2) +
  geom_bar(mapping = aes(x = remote_ratio))+
  labs(y = "Frequency")

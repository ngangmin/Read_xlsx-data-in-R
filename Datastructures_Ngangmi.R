library(xlsx) 

#Create EmpData dataframe
EmpData <- read.xlsx(file= "/Users/Anthony/Documents/BBA460/Week1/Week 1 Files/empdata.xlsx", sheetIndex = 1)

#Extracting data for employees with start_date before 2011
EmpData[EmpData$start_date < "2011-09-23",]
#Extracting all employees with salary greater than 14000 or less than 9000
EmpData[EmpData$salary > 14000 | EmpData$salary < 9000,]

#Extract emmployees who are Engineers, data scientists with salaries greater than 12000
Empdata[EmpData$position == 'Engineer' | EmpData$position == 'Data Scientist' & EmpData$salary > 12000,]

#Add new Employee Sam Jones
new_row <- c(ID = 111, name = "Sam Jones", start_date="2012-07-12", position="Accountant", salary=9300, City="New Jersey")
EmpData_Updated <- rbind(EmpData,new_row)
EmpData_Updated
#Delete Data for Daniel Hope
Empdata_Updated <-subset(EmpData_Updated, Name!="Daniel Hope")
Empdata_Updated



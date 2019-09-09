# Data Set has been taken from "https://www.contextures.com/xlSampleData01.html"
# Used XLSX file as data 

library("readxl") # As we are using Excel file we are using this readxl library 
install.packages("readxl")# Installing readxl file
read_excel ("QA1.xlsx")# Assigned QA variable to that excel sheet
QA <- read_excel("QA1.xlsx",col_names = TRUE)
View(QA)# to view the data 
summary(QA)# Using Summary to provide the statistics of Min,1st Q,Median,Mean,3rd Q,Max
Region <- factor(c(QA$Region)) # Assigned Variable to find Unique charater Values of Region
Region # Verifying Region

Total <- QA$Total # Assigning Total values sheet to a variable
Total

Group <- tapply(Total,Region,sum) # To make a consoslidation of levels and Summing
Group
#Graph
# Using a barplot graph to plot the regional sales and assigning the Lables and axis limits
Plot <- barplot(Group,main = "Bar Plotting of Regional Sales Total",
                ylab = "Sales Total",xlab = "Regions",ylim =c(0,12000)) 
#Stacked Bar Charts
Stk <- table(QA$Region,QA$Item)
Stk
barplot(Stk,ylim = c(0,20),las = 1)
Clr =c("Orange","Yellow","Brown") 
barplot(Stk,ylim = c(0,15),las = 1,col = Clr,legend.text = TRUE,beside = TRUE)
#END

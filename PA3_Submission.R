# PA3_Submission.R
# Jameson Dorough
# 5/28/26
# create and manipulate data frames using logical operators


# starting data
EmployeeID <- c(1001, 1002, 1003, 1004, 1005)
LastName <- c('Smith','Norris','Johnson','Hart','Owens')
Salary <- c(45000, 51000, 36000,39000, 42000)

# Create data frame
empDF.data <- data.frame(EmployeeID, LastName, Salary)
summary(empDF.data)


# 0 = exempt from overtime
# 1 = eligible for overtime
exemptVals <- c(0, 1)
EXEMPT <- exemptVals[(empDF.data$Salary > 50000) + 1]
EXEMPT[EXEMPT == 0] <- 'N'
EXEMPT[EXEMPT == 1] <- 'Y'

# add to data frame
empDF.data <- cbind(empDF.data, EXEMPT)
empDF.data

# display first 2 rows
empDF.data[1,]
empDF.data[2,]

# display DF structure
str(empDF.data)

# Add new employee data
empDF.data <- rbind(empDF.data, c(1006, 'Rogers', 55000, 'Y'))
empDF.data
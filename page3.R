# step-1: data cleansing 
# step-1-1: remove all NA values
# step-1-2: convert categorical to continuous
# step-1-3: scale the data
# step-1-4: add a new column
# step-1-5: remove a column
# step-1-6: convert the data type

# step-2: implement the ML algorithm
# step-3: consume the result
# step-4: Put the result in graph(s) [data visualization]

df3 = read.csv('/Volumes/Data/Sunbeam/2019/Feb/DBDA/stats_R/dataset/nba.csv')

# convert factor to character
df3$Name = as.character(df3$Name)

df = read.csv('/Volumes/Data/Sunbeam/2019/Feb/DBDA/stats_R/dataset/Data.csv')

summary(df)

# remove all the NA values from Age column
df$Age = ifelse(is.na(df$Age), mean(df$Age, na.rm = TRUE), df$Age)

# convert Age from numeric to integer
df$Age = as.integer(df$Age)

# remove all  NA values from Salary
df$Salary = ifelse(is.na(df$Salary), mean(df$Salary, na.rm = TRUE), df$Salary)


# convert the Country to numeric
df$Country = factor(df$Country, levels = c('France', 'Spain', 'Germany'), labels = c(1, 2, 3))

# convert Purchased to numeric
# 10: Yes
# 20: No
df$Purchased = factor(df$Purchased, levels = c('Yes', 'No'), labels = c(10, 20))

# add a new column
df$Tax = df$Salary * 0.10
df$GST = 18
print(df)

# remove the columns
df$GST = NULL
df$Salary = NULL

days = c('Sunday', 'Monday', 'Sunday', 'Tuesday', 'Monday')
print(class(days))

days.in.factor = factor(days, levels = c('Sunday', 'Monday', 'Tuesday'))
print(class(days.in.factor))
print(days.in.factor)

# 1: Sunday
# 2: Monday
# 3: Tuesday
days.in.integer = factor(days, levels = c('Sunday', 'Monday', 'Tuesday'), labels = c(1, 2, 3))
print(class(days.in.factor))
print(days.in.integer)

names = c("person1", "person2")
ages = c(45, 15)

df1 = data.frame(names, ages)
print(df1$names)

df2 = data.frame(names, ages, stringsAsFactors = FALSE)
print(df2$names)




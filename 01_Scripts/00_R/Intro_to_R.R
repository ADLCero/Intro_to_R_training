# 1. Assigning and using variables

A <- 1
B <- 2
C <- 3


# Perform basic math operations by using the variables instead of the numbers
# assigned to them:

D <- A + B
C <- 2*A*B^B  # We can also overwrite variables

C + D


# Data types in R

# 1. Numeric
E <- 525600

# 2. Logic
Outcome <- TRUE

# 3. Character
BestProfession <- "Engineering"

# Print the variables to know what values are assigned to them
print(E)
print(Outcome)
print(BestProfession)

# To know the type of the variable
class(E)
class(Outcome)
class(BestProfession)

#------------------------------------------------------------------------------#

# EXERCISE 1: Use variables in a script to solve for the number of liters of water
# needed annually by a town.

# Step 1: Define the variables

Population <- 10000 # people in the town
Population_LPD <- 120 # water consumption per person (liters per day)

Golf_course_LPM <- 1400000 # water consumption of the golf course per month (liters)
Golf_course_no <- 3 # number of golf courses in the town

Days_year <- 365 # number of days in a year
Days_month <- 30 # number of days in a month


# Step 2: Do the computation

# Compute for the water consumption by:
# a. All people
People_use <- Population * Population_LPD * Days_year

# b. Golf course
Golf_use <- Golf_course_no * ((Golf_course_LPM/Days_month) * Days_year)

# or Golf_use <- Golf_course_no * Golf_course_LPM * Days_year/Days_month

# c. Total use
Total_use <- People_use + Golf_use

print(Total_use)

#------------------------------------------------------------------------------#

# Using the paste() to combine different types of variables

Total_use_print <- paste("The total water consumption in the town is", Total_use,
                         "liters per year.")

print(Total_use_print)

#------------------------------------------------------------------------------#

# Data structures in R

Crop1 <- "rice"
Crop2 <- "corn"
Crop3 <- "sugarcane"
Crop4 <- "cassava"

Crops <- c("rice", "corn", "sugarcane", "cassava")
Crops


Crops2 <- c(Crop1, Crop2, Crop3, Crop4)
Crops2


# Vectors

# Numeric vector
v1 <- c(1, 2, 3, 4, 5)

# Character vector
v2 <- c("apple", "banana", "grapes", "cherry", "strawberry")

# Logical vector
v3 <- c(TRUE, FALSE, TRUE, FALSE, FALSE)


# Other ways to create vectors:

# Sequence of numbers
v_seq <- seq(0, 50, 2) # Sequence of numbers from 0 to 50, by 2s

# Repeating values
v_rep <- rep(5, times = 4)


# Check type and length of vectors

length(Crops)   # number of elements
typeof(Crops)   # data type
is.vector(Crops) # TRUE if it is a vector

# Doing math directly on vectors

x <- c(1, 2, 3)
y <- c(4, 5, 6)

x + y   # 5 7 9
x * 2   # 2 4 6
x > 2   # FALSE FALSE TRUE


# Accessing values in a vector

Crops

Crops[1]    # Gets the first element
Crops[4]    # Gets the fourth element


# Accessing multiple values in a vector

Crops[1:2]

# Overwriting an element in a vector using indexing

Crops[3] <- "dragonfruit"
Crops


# MATRIX 

# Creating a matrix (2-D array)
# Option 1: using array syntax

m1 <- array(data = 1:10, dim = c(5, 2))
m1

# Option 2: using matrix()

m2 <- matrix(data = 1:10, nrow = 5, byrow = FALSE)
m2


# Creating matrix from vectors by binding them

# Column-bind
m3 <- cbind(c(1,2), c(3,4))

# Row-bind
m4 <- rbind(c(1,2), c(3,4))

# Indexing a matrix in R

# 1. Create a sample matrix

m5 <- matrix(1:20, nrow = 4)
m5

m5[1, 2]   # Row 1, Column 2
m5[ , 2]   # Entire column 2
m5[4, ]    # Entire row 4


# Matrix operations

m6 <- matrix(1:4, nrow = 2)
m7 <- matrix(5:8, nrow = 2)

m6 + m7   # Element-wise addition
m6 * m7   # Element-wise multiplication


# Some useful matrix functions

dim(m5)      # dimensions (number of rows, number of columns)
nrow(m5)     # number of rows
ncol(m5)     # number of columns
rowSums(m5)  # sum of each row
colSums(m5)  # sum of each column
rowMeans(m5) # average of each row
colMeans(m5) # average of each column
t(m5)        # transpose


# DATA FRAMES

# Creating a data frame

df <- data.frame(
  crop = c("rice", "corn", "sugarcane", "dragonfruit", "cassava"),
  weight_kg = c(100, 250, 80, 550, 150),
  days_in_storage = c(10, 15, 8, 9, 5)
)

df

# Accessing data frame elements

df$crop             # by column name

df[1, 2]            # by row and column index
df[ , "weight_kg"]  # all rows of column weight_kg
df[1, ]             # entire first row


# Using subset()

subset(df, weight_kg > 100)


# Inspecting a data frame

dim(df)          # dimensions (number of rows, number of columns)
str(df)          # structure
summary(df)      # summary statistics
names(df)        # column names


# Modifying data frames

# 1. Adding a new column

df$storage_room <- c(1, 1, 2, 3, 4)

# 2. Renaming a column
# a. Rename a single column by name

names(df)[names(df) == "weight_kg"] <- "weight_tons"

# b. Rename by column position

names(df)[2] <- "weight_kg"

# c. Rename multiple columns

names(df) <- c("crop_name", "weight", "number_of_days_stored", "room_no")


# Lists

# Creating a simple list
list1 <- list(1, "hello", TRUE, c(2, 3, 4))

# Creating a named list
list2 <- list(crop = "rice",
              weight_kg = c(100, 250, 80),
              status_in_storage = c(TRUE, FALSE, TRUE),
              room_no = "1a")

# Accessing list elements






# **Introduction to basic R programming** 

Sample code and script

## **Assigning and using variables**

```{r}
A <- 1
B <- 2
C <- 3

# For now, we are using single letters to as variable names. But,
# GOOD PRACTICE: Using short but meaningful variable names.
```

```{r}
# Perform basic math operations by using the variables instead of the numbers
# assigned to them:

D <- A + B
C <- 2*A*B^B  # We can also overwrite variables

C + D

```

## Data types in R

```{r}
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
```

###  EXERCISE 1: Use variables in a script to solve for the number of liters of water needed annually by a town.

-   Each person uses 120 liters of water per day on average.

-   There are 10,000 residents in the town.

-   A golf course uses on average 1,400,000 liters of water per month. Presume an average month is 30 days.

-   There are three (3) golf courses in the town.

**How much water does the town use per year?**

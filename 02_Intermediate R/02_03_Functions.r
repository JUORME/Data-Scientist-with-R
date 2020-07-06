#INTRODUCTION TO FUNCTIONS
#Function documentation
# Consult the documentation on the mean() function
help(mean)

# Inspect the arguments of the mean() function
args(mean)

#Use a function
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)

# Inspect avg_li and avg_fb
avg_li
avg_fb

#Use a function (2)
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean((linkedin + facebook), trim=0.2 )

# Inspect both new variables
avg_sum
avg_sum_trimmed

#Use a function (3)
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of linkedin
mean(linkedin, na.rm = TRUE)

#Functions inside functions
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)

#Required, or optional?
(1) and (3)

#WRITING FUNCTIONS
#Write your own function
# Create a function pow_two()
pow_two <- function (x){
  x <- x^2 
  return(x)
}

# Use the function
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x,y){
  sum <- abs(x)+abs(y)
  return(sum)
}


# Use the function
sum_abs(-2,3)

#Write your own function (2)
# Define the function hello()
hello <- function(){
    print("Hi there!")
    return(TRUE)
}


# Call the function hello()
hello()

#Write your own function (3)
# Finish the pow_two() function
pow_two <- function(x , print_info = TRUE) {
  y <- x ^ 2
  if(print_info == "TRUE"){
  print(paste(x, "to the power two equals", y))
  }
  return(y)
}

#Function scoping
#Whatever the way of calling the two_dice() function, R won't have access to dice1 and dice2 outside the function.

#R passes arguments by value
#In the end, count will equal 10.

#R you functional?
# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])

#R you functional? (2)
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0

  for (v in views) {
    count <- count + interpret(v)
  }

  if (return_sum == "TRUE") {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

#R PACKAGES
#Load an R Package
# Load the ggplot2 package
library(ggplot2)

# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)

# Check out the currently attached packages again
search()

#Different ways to load a package
(1) and (2)



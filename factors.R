# # To create factors in R, you make use of the function factor(). 
# First thing that you have to do is create a vector that contains all 
# the observations that belong to a limited number of categories.
# For example, sex_vector contains the sex of 5 different individuals:
# #   
# #   sex_vector <- c("Male","Female","Female","Male","Male")
# #   It is clear that there are two categories, or in R-terms 
#   'factor levels', at work here: "Male" and "Female".
# #   
# #   The function factor() will encode the vector as a factor:
# #     
# #     factor_sex_vector <- factor(sex_vector)
#


#-------------------------------------------------------------------
'Whats a factor and why would you use it? (3)

There are two types of categorical variables: a nominal
categorical variable and an 
ordinal categorical variable.

A nominal variable is a categorical variable without an 
implied order. This means that it is impossible to say that 
one is worth more than the other'. 
'For example, think of the categorical variable animals_vector with the 
categories "Elephant", "Giraffe", "Donkey" and "Horse". Here, it is impossible 
to say that one stands above or below the other. (Note that some of you might 
                                                  disagree ;-) ).

In contrast, ordinal variables do have a natural ordering. Consider for 
example the categorical variable temperature_vector with the categories: 
"Low", "Medium" and "High". Here it is obvious that "Medium" stands above 
"Low", and "High" stands above "Medium"'

#-----------------------------------------------

'Recording the sex with the abbreviations "M" and "F"
can be convenient if you are collecting data with pen and paper, 
but it can introduce confusion when analyzing the data. At that point, 
you will often want to change the factor levels to "Male" and "Female" 
instead of "M" and "F" for clarity.

Watch out: the order with which you assign the levels is important.
If you type levels(factor_survey_vector), youll see that it outputs [1] 
"F" "M". If you dont specify the levels of the factor when creating the
vector, R will automatically assign them alphabetically. To correctly map "F" 
to "Female" and "M" to "Male", the levels should be set to c("Female", "Male"),
in this order.

#------------------------------------------------------------------------

                      Summarizing a factor

After finishing this course, one of your favorite functions 
in R will be summary(). This will give you a quick overview of the 
contents of a variable:

                  summary(my_var)

Going back to our survey, you would like to know how many "Male" 
responses you have in your study, and how many "Female" responses. 
The summary() function gives you the answer to this question.

#-----------------------------------------------------------------------
                        Ordered factors (2)

speed_vector should be converted to an ordinal factor since its categories
have a natural ordering. By default, the function factor() transforms 
speed_vector into an unordered factor. To create an ordered factor, you have
to add two additional arguments: ordered and levels.

          factor(some_vector, ordered = TRUE, levels = c("lev1", "lev2" ...))

By setting the argument ordered to TRUE in the function factor(), you indicate 
that the factor is ordered. With the argument levels you give the values of the
factor in the correct order.

From speed_vector, create an ordered factor vector: factor_speed_vector. Set ordered 
to TRUE, and set 

                levels to c("slow", "medium", "fast").'



# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <-factor(speed_vector,ordered=TRUE,levels=c("slow","medium","fast"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)
#------------------------------------------------------------------------------


# Use [2] to select from factor_speed_vector the factor value for the second
# data analyst. Store it as da2.
# 
# Use [5] to select the factor_speed_vector factor value for the fifth data
# analyst. Store it as da5.
# 
# Check if da2 is greater than da5; simply print out the result.
# Remember that you can use the > operator to check whether one element is 
# larger than the other.


# Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))

# Factor value for second data analyst
da2 <-factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <-factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2>da5

#----------------------------------------------------------------------------




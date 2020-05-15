# In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is called two-dimensional.
# 
# You can construct a matrix in R with the matrix() function. Consider the following example:
#   
#   matrix(1:9, byrow = TRUE, nrow = 3)
# In the matrix() function:
#   
#   The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
# The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
# The third argument nrow indicates that the matrix should have three rows.

#--------------------------------------------------------------------

# Use c(new_hope, empire_strikes, return_jedi) to combine the three vectors
# into one vector. Call this vector box_office.
# Construct a matrix with 3 rows, where each row represents a movie. 
# Use the matrix() function to do this. The first argument is the vector box_office,
# containing all box office figures. Next, you'll have to specify nrow = 3 and
# byrow = TRUE. Name the resulting matrix star_wars_matrix.

#--------------------------------------------------------------------



# Similar to vectors, you can add names for the rows and the columns of a matrix
# 
# rownames(my_matrix) <- row_names_vector
# colnames(my_matrix) <- col_names_vector
# We went ahead and prepared two vectors for you: region, 
# and titles. You will need these vectors to name the columns and 
# rows of star_wars_matrix, respectively.

#--------------------------------------------------------------------

# In R, the function rowSums() conveniently calculates the totals for each row
# of a matrix. This function creates a new vector:
 
#   rowSums(my_matrix)
#--------------------------------------------------------------------

# You can add a column or multiple columns to a matrix with the cbind()
# function, which merges matrices and/or vectors together by column. For example:
#   
#   big_matrix <- cbind(matrix1, matrix2, vector1 ...)
#----------------------------------------------------------------------

# Type the name of these matrices in the console and hit Enter if you want
# to have a closer look. If you want to check out the contents of the workspace,
# you can type ls() in the console.


# Use rbind() to paste together star_wars_matrix and star_wars_matrix2, 
# in this order. 
# Assign the resulting matrix to all_wars_matrix.


# ---------------------------------------------------------------------
# Similar to vectors, you can use the square brackets [ ] to 
# select one or multiple elements from a matrix. Whereas vectors have 
# one dimension, matrices have two dimensions. You should therefore use a 
# comma to separate the rows you want to select from the columns. For example:
#   
#   my_matrix[1,2] selects the element at the first row and second column.
# 
# my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3
# and columns 2, 3, 4.
# If you want to select all elements of a row or a column, no number is
# needed before or after the comma, respectively:
#   
#   my_matrix[,1] selects all elements of the first column.
# my_matrix[1,] selects all elements of the first row.


#------------------------------------------------------------------------
# Similar to what you have learned with vectors,
# the standard operators like +, -, /, *, etc. work in an element-wise way 
# on matrices in R.
# 
# For example, 2 * my_matrix multiplies each element of my_matrix by two.


#--------------------------------------------------------------------------



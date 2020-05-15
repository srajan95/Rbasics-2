'Vectors (one dimensional array): can hold numeric, character or logical values.
The elements in a vector all have the same data type.

Matrices (two dimensional array): can hold numeric, character or logical values.
The elements in a matrix all have the same data type.

Data frames (two-dimensional objects): can hold numeric, character or logical
values. Within a column all elements have the same data type, but different columns
can be of different data type.'

#---------------------------------------------------------------------------------

                                 'Creating a list

Let us create our first list! To construct a list you use the function list():
  
  my_list <- list(comp1, comp2 ...)
The arguments to the list function are the list components. Remember, these
components can be matrices, vectors, other lists'

#-----------------------------------------------------------------------------------


                          'Creating a named list

              my_list <- list(name1 = your_comp1, name2 = your_comp2)

This creates a list with components that are named name1, name2, and so on.
If you want to name your lists after you have created them, you can use the 
names() function as you did with vectors. The following commands are fully
equivalent to the assignment above:
  
              my_list <- list(your_comp1, your_comp2)
                names(my_list) <- c("name1", "name2")'

#--------------------------------------------------------------------------------

        # Vector with numerics from 1 up to 10
          my_vector <- 1:10 

        # Matrix with numerics from 1 up to 9
          my_matrix <- matrix(1:9, ncol = 3)

        # First 10 elements of the built-in data frame mtcars
        my_df <- mtcars[1:10,]

        # Adapt list() call to give the components names
        my_list <- list(my_vector, my_matrix, my_df)
        names(my_list)<-c("vec","mat","df")

  
        # Print out my_list
        my_list
        
#------------------------------------------------------------------------
                              'Selecting elements from a list

       
        
        One way to select a component is using the numbered position of that 
component. For example, to "grab" the first component of shining_list you type
        
                                shining_list[[1]]

        A quick way to check this out is typing it in the console. Important to 
        remember: to select elements from vectors, you use single square 

                          brackets: [ ]. Dont mix them up!

You can also refer to the names of the components, with [[ ]] or 
with the $ sign. Both will select the data frame representing the reviews:

                          shining_list[["reviews"]]
                          shining_list$reviews

Besides selecting components, you often need to select specific elements 
out of these components. For example, with shining_list[[2]][1] you select 
from the second component, actors (shining_list[[2]]), the first element ([1]).
When you type this in the console, you will see the answer is Jack Nicholson.'

        
#------------------------------------------------------------------------------------
        
        # Print out the vector representing the actors
        shining_list$actors
        shining_list
        
        # Print the second element of the vector representing the actors
        shining_list[[2]][2]
        
#----------------------------------------------------------------------------------
                  'Adding more  information to the list
        
        To conveniently add elements to lists you can use the c() 
        function, that you also used to build vectors:
          
          ext_list <- c(my_list , my_val)

        This will simply extend the original list, my_list, with the 
component my_val. This component gets appended to the end of the list. 
If you want to give the new list item a name, you just add the name as you 
did before:
          
          ext_list <- c(my_list, my_name = my_val)'


#-----------------------------------------------------------------------------

                  # Use c() to add a year to shining_list
                  shining_list_full <- c(shining_list, year = 1980)
        
                   # Have a look at shining_list_full
                   str(shining_list_full)
                   
#-------------------------------------------------------------------------------
                   
                   

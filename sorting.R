                              'Sorting

order() is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for example:

                              > a <- c(100, 10, 1000)
                              > order(a)
                              [1] 2 1 3

                              10, which is the second element in a, is the smallest element, so 2 comes first in the output of order(a). 100, which is the first element in a is the second smallest element, so 1 comes second in the output of order(a).
                              
                              This means we can use the output of order(a) to reshuffle a:
                              
                              > a[order(a)]
                              [1]   10  100 1000'
                    
#----------------------------------------------------------------------------------
                              
                              # planets_df is pre-loaded in your workspace
                              
                              # Use order() to create positions
                              positions <- order(planets_df$diameter) 
                              
                              # Use positions to sort planets_df
                              planets_df[positions,]
                              
#------------------------------------------------------------------------

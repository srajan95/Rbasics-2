# As seen in the previous chapter, stating 6 > 5 returns TRUE.
# The nice thing about R is that you can use these comparison operators 
# also on vectors. For example:


# You can select the desired elements, by putting selection_vector 
# between the square brackets that follow poker_vector:
#   
#   poker_vector[selection_vector]
# 
# R knows what to do when you pass a logical vector in square 
# brackets: it will only select the elements that correspond to TRUE in 
# selection_vector.
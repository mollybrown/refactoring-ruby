# You have a temp. variable assigned more than once, but it is not loop variable nor a collecting temp variable =>
# Make a seperate temp variable for each assignement.

temp = 2 * (@height + @width)
puts temp

temp = (@height * @width)
puts temp

##########################

perimiter = 2 * (@height + @width)
puts perimiter

area = (@height * @width)
puts area

# The parameters in a method call cannot easily be deduced from the name of method you are calling. =>
# Convert the paramater list into a Hash, and use the keys of the Hash as names for the parameters

SearchCriteria.new(5, 8, "827387132")

#######################

SearchCriteria.new(:author_id => 5, :publisher_id => 8, :isbn => "827387132")

# The fluency that the named parameter brings is no longer worth the complexity on the reciever. =>
# Convert the named parameter Hash into a standard parameter list.

SearchCriteria.new(:isbn => "827387132")

#######################

SearchCriteria.new("827387132")

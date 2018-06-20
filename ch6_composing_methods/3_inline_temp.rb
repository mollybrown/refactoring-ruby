# You hsve a temp that is assigned to once with a simple expression, and the temp is getting in the way of other refactorings =>
# Replace all references to that temp with the expression

base_price = order.base_price
return(base_price > 1000)

########################

return (order.base_price > 1000)

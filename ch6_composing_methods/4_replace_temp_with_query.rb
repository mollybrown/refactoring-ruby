# You are using a temporoary variable to hold the result of an expression =>
# Extract the expression into a method. Repalce all refs to the temp with the expression. The new method can then be used in other methods.

base_price = @quantity * @item_price

if (base_price > 1000)
  base_price * 0.95
else
  base_price * 0.98
end

########################

if (base_price > 1000)
  base_price * 0.95
else
  base_price * 0.98
end

def base_price
  base_price = @quantity * @item_price
end

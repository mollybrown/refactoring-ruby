# The code assigns to a parameter =>
# Use a temp variable instead

def discount(input_val, quantity, year_to_date)
  if input_val > 50
    input_val -= 2
  end
end

#########################

def discount(input_val, quantity, year_to_date)
  result = input_val
  if input_val > 50
    result -= 2
  end
end

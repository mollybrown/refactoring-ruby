# You have a code fragment that can be grouped together =>
# Turn the fragment into a method whose name explains the purpose of the method.

def print_owing(amount)
  print_banner
  puts "name: #{@name}"
  puts "amount: #{@amount}"
end

##############################

def print_owing(amount)
  print_banner
  print_details(amount)
end

def print_details(amount)
  puts "name: #{@name}"
  puts "amount: #{@amount}"
end

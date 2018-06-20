# You have two methods that contain nearly identical code. The variance is in the middle of the method. =>
# Extract the duplication into a method that accepts a block and yields back to the caller to execute the unique code.

def charge(amount, credit_card_number)
  begin
    connection = CreditCardServer.connect(...)
    connection.send(amount, credit_card_number) ### see change below
  rescue IOError => error
    Logger.log("Could not submit order #{@order_number} to the server: #{error}")
    return nil
  ensure
    connection.close
  end
end

##########################

def charge(amount, credit_card_number)
  connect do |connection|
    connection.send(amount, credit_card_number)
  end
end

def connect
  begin
    connection = CreditCardServer.connect(...)
    yield connection ### see change from above (yield back to caller)
  rescue IOError => error
    Logger.log("Could not submit order #{@order_number} to the server: #{error}")
    return nil
  ensure
    connection.close
  end

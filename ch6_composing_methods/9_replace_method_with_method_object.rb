# You have a long method that uses local variables in such a way that you cannot apply extract method =>
# Turn the method into its own object so that all the local variables become instance variables on that object.
# You can then decompose the method into other methods on the same object

class Order
  def price
    primary_base_price = 0
    secondary_base_price = 0
    tertiary_base_price = 0
    # Do some long computation
  end
end

#############################

class Order
  return PriceCalculator.new(self).compute()
end

class PriceCalculator
  def initialize
    @charge = charge
    @primary_base_price = primary_base_price
    @secondary_base_price = secondary_base_price
    @tertiary_base_price = tertiary_base_price
  end

  def compute
    @primary_base_price = 0
    @secondary_base_price = 0
    @tertiary_base_price = 0
    # Do some long computation
  end
end

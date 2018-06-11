class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie = movie
    @days_rented = days_rented
  end

  def charge
    movie.charge(days_rented)
  end

  def frequent_renter_points
    (movie.price_code == Movie::NEW_RELEASE && rental.days_rented > 1) ? 2 : 1
  end

end

module DrinksHelper
  def two_digits(price)
    return sprintf("%0.02f", price)
  end
end

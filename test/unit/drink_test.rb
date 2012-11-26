require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  test 'drink attributes must not be empty' do
    drink = Drink.new
    assert drink.invalid?
    assert drink.errors[:title].any?
    assert drink.errors[:price].any?
  end
end

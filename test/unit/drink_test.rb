require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  fixtures :drinks
  
  test 'drink attributes must not be empty' do
    drink = Drink.new
    assert drink.invalid?
    assert drink.errors[:title].any?
    assert drink.errors[:alcohol].any?
    assert drink.errors[:image_url].any?
  end
  
  test 'drink name must be unique' do
    drink = Drink.create(:title => 'Volnay',
      :image_url => 'drinks/volmay.jpg',
      :alcohol => 12)
    
      assert drink.invalid?
      assert drink.errors[:title].any?
  end
end

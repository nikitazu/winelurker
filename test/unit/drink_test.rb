require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  fixtures :drinks
  
  test 'drink attributes must not be empty' do
    drink = Drink.new
    assert drink.invalid?
    assert drink.errors[:title].any?
    assert drink.errors[:price].any?
    assert drink.errors[:alcohol].any?
    assert drink.errors[:image_url].any?
  end
  
  test 'drink price must be positive' do
    volnay = drinks(:volnay)
    old_price = volnay.price
    
    assert volnay.valid?
    
    volnay.price = -1
    assert volnay.invalid?
    
    volnay.price = 0
    assert volnay.invalid?
    
    volnay.price = 100.99
    assert volnay.valid?
    
    volnay.price = old_price
    assert volnay.valid?
  end
  
  test 'drink name must be unique' do
    drink = Drink.create(:title => 'Volnay',
      :image_url => 'drinks/volmay.jpg',
      :alcohol => 12,
      :price => 450.00)
    
      assert drink.invalid?
      assert drink.errors[:title].any?
  end
end

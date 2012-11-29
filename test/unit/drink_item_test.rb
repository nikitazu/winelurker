require 'test_helper'

class DrinkItemTest < ActiveSupport::TestCase
  fixtures :drinks, :places
  
  test 'drink item price must be positive' do
    item = DrinkItem.new
    item.drink_id = drinks(:volnay).id
    item.place_id = places(:five).id
    item.price = 100.00
    
    assert item.valid?, 'positive price valid? failure'
    
    item.price = -1
    assert item.invalid?, 'negative price invalid? failure'
    
    item.price = 0
    assert item.valid?, 'zero price valid? failure'
  end
end

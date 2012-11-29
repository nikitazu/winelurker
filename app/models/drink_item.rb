class DrinkItem < ActiveRecord::Base
  attr_accessible :drink_id, :place_id
  
  # References
  # ==========
  
  belongs_to :place
  belongs_to :drink
end

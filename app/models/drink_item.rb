class DrinkItem < ActiveRecord::Base
  attr_accessible :drink_id, :place_id, :price
  
  # References
  # ==========
  
  belongs_to :place
  belongs_to :drink
  
  # Validation
  # ==========
  
  validates :drink_id, :place_id, :price, :presence => true
  
  validates :price, :numericality => { :greater_than_or_equal_to => 0.00 }
end

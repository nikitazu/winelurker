class Place < ActiveRecord::Base
  attr_accessible :building, :city, :country, :image_url, :nearest_metro, :region, :street, :title
  
  # References
  # ==========
  
  has_many :drink_items, :dependent => :destroy
end

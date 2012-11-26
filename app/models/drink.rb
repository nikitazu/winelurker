class Drink < ActiveRecord::Base
  attr_accessible :alcohol, :description, :image_url, :price, :title
end

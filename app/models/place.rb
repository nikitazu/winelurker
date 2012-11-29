class Place < ActiveRecord::Base
  attr_accessible :building, :city, :country, :image_url, :nearest_metro, :region, :street, :title
end

class Drink < ActiveRecord::Base
  attr_accessible :alcohol, :description, :image_url, :price, :title
  
  default_scope :order => 'title'
  
  # References
  # ==========
  
  has_many :drink_items
  before_destroy :ensure_not_referenced_by_any_drink_item
  
  # Validation
  # ==========
  
  validates :title, :price, :presence => true
  
  validates :title, :uniqueness => true
  
  validates :price, :numericality => { :greater_than_or_equal_to => 0.01 }
  
  validates :alcohol, :numericality => { 
    :greater_than_or_equal_to => 0, 
    :less_than_or_equal_to => 50 
  }
  
  validates :image_url, :format => {
    :with     => %r{\.(gif|jpg|jpeg|png)$}i,
    :message  => 'must be a URL for GIF, JPG or PNG image.'
  }
  
  private
  
  def ensure_not_referenced_by_any_drink_item
    if drink_items.count.zero?
      return true
    else
      errors.add(:base, 'Drink Items present')
      return false
    end
  end
end

class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }  




  def is_discounted?
    if price < 10
      "true"
    else
      "false"
    end
 #method retun tax
  def tax
    tax = price * 0.09
  end

  # momdel for total - sum of price + tax
  def total
    total = price + tax
    
  end
  end


end

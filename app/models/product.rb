class Product < ApplicationRecord

  has_many :category_products
  has_many :categories, through: :category_products

  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :users, through: :carted_products


  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }  
#association method!
  has_many :images

  #association method!
  belongs_to :supplier
   #original under hood came from a find_by statement

  def is_discounted?
    if price < 10
      "true"
    else
      "false"
    end
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

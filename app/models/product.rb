class Product < ApplicationRecord
  belongs_to :category
  has_many_attached :productImages
  has_many :stocks, dependent: :destroy

  
end

class Cart < ApplicationRecord
    has_many :cart_items
    has_one :order
end

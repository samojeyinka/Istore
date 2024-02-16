class Category < ApplicationRecord
    before_destroy :destroy_products
    has_many :products,dependent: :destroy
    has_one_attached :categoryImage
    

    private

    def destroy_products
        self.products.destroy_all
      end

      
end

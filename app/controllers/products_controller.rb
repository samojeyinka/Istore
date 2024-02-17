class ProductsController < ApplicationController

    def index
        @products = Product.order('Random()')
    end

    def show
        @product = Product.find(params[:id])
        @similar_products = Product.where(category_id: @product.category_id).where.not(id: @product.id).limit(10)
          
    end
end
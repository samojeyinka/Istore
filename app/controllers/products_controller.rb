class ProductsController < ApplicationController

    def index
        @products = Product.order('Random()')
    end

    def show
        @product = Product.find(params[:id])
        @similar_products = Product.where(category_id: @product.category_id).where.not(id: @product.id).limit(10)
          
    end

    def add_to_cart
        @product = Product.find(params[:product_id])
        @cart = Cart.find_or_create_by(id: session[:cart_id])
        @cart_item = @cart.cart_items.build(product: @product, quantity: 1)
        if @cart_item.save
          redirect_to @product, notice: "Product was successfully added to cart."
        else
          redirect_to @product, alert: "Failed to add product to cart."
        end
      end


end
class CartsController < ApplicationController
  def show
    @cart = Cart.find_or_create_by(id: session[:cart_id])
    @cart_items = @cart.cart_items.includes(:product)
  end
  
    def update
      @cart = Cart.find_or_create_by(id: session[:cart_id])
      # Add logic to add or remove items from the cart
    end
  
    def destroy
      session[:cart_id] = nil
      redirect_to root_path, notice: "Cart was successfully cleared."
    end
  end
  
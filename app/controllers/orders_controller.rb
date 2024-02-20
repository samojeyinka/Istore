# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  def new
    @order = Order.new
    @cart_items = current_cart.cart_items.includes(:product)
  end
  
  
  def create
    @order = Order.new(order_params)
    @order.cart = current_cart
    @order.total_price = current_cart.cart_items.sum { |item| item.quantity * item.product.price }
    if @order.save
      # Clear the cart after creating the order
      current_cart.cart_items.destroy_all
      redirect_to root_path, notice: "Order was successfully placed."
    else
      render :new
    end
  end
  
  
  private
  
  def order_params
    params.require(:order).permit(:email, :address)
  end
  
  end
  
class ApplicationController < ActionController::Base
    before_action :set_cart
    helper_method :current_cart
    
    private
    
    def set_cart
      session[:cart_id] ||= Cart.create.id
    end
  
    def current_cart
      @current_cart ||= Cart.find_or_create_by(id: session[:cart_id])
    end

end

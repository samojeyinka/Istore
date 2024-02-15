class HomeController < ApplicationController

def index
    @categories = Category.all
    @products = Product.take(10).reverse!
end
end
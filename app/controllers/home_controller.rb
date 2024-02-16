class HomeController < ApplicationController

def index
    @categories = Category.all
    @products = Product.take(10).reverse!
    @category = Category.last
    @latestcatproducts = @category.products
end
end
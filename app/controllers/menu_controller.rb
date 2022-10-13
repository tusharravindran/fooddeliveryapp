class MenuController < ApplicationController
  def index
    @page = 'menu'
    @products = Product.all
    @products = Product.all
  end


end

class ProductsController < ApplicationController
  def index
    @search = Product.ransack(params[:q])
    @products = @search.result.paginate(:page => params[:page], :per_page => 8)
  end
end

class ProductsController < ApplicationController

  def index
    @products = Product.find :all
  end
  
  def show
    @product = Product.find params[:id]
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new params[:product]
    if @product.save
      redirect_to :action => 'show', :id => @product.id
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @product = Product.find params[:id]
    @product.destroy
  end
  
  def edit
    @product = Product.find params[:id]
  end
  
  def update
    @product = Product.find params[:id]
    if @product.update_attributes(params[:product])
      redirect_to :action => 'show', :id => @product.id
    end
  end

end

class UsersController < ApplicationController

  def show
    @seller = User.where(:username => params[:username]).first
    if @seller and seller?
      render "seller/storefront"
      
    else
      flash[:warning] = "This user isn't a seller, so they don't have a storefront"
      redirect_to root_url and return
    end
  end
  
  def collection
    @buyer = User.where(:username => params[:username]).first
    if @buyer and buyer?
      render "buyer/collection"
    else
      redirect_to root_url and return
    end
  end
end
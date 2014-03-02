class UsersController < ApplicationController
  
  def is_seller!
    current_user.where(:role, "seller")
  end
  
  def show
    @seller = User.where(:username => params[:username]).first
    if @seller and @seller.is_seller?
      render "seller/storefront"
      
    else
      flash[:warning] = "This user isn't a seller, so they don't have a storefront"
      redirect_to root_url and return
    end
  end
end
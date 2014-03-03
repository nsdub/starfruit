class AdminController < ApplicationController
  before_filter :authenticate_admin
  
  def dashboard
    render "admin/dashboard"
      
  end
end
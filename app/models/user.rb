class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :timeoutable, :confirmable, :lockable
         
  ADMIN = "admin"
  BUYER = "buyer"
  SELLER = "seller"
  USER_TYPES = {
    ADMIN => { description: "Admin"},
    BUYER => { description: "Buyer"}, 
    SELLER => { description: "Seller"}
  }
  USER_TYPES_LIST = USER_TYPES.collect{ |name, details| ["#{details[:description]}", name] }
  
 
  def is_buyer?
   current_user.role == "buyer"
  end

  def is_seller?
   current_user.role == "seller"
  end

  def is_admin?
   current_user.role == "admin"
  end
end

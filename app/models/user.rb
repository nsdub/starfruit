class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :timeoutable, :confirmable, :lockable
  has_many :products
  
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
    self.role == "buyer"
  end

  def is_seller?
   self.role == "seller"
  end

  def is_admin?
   self.role == "admin"
  end
end

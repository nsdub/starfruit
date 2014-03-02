class Product < ActiveRecord::Base
  attr_accessible :title, :description, :asset
  belongs_to :user
  mount_uploader :asset, AssetUploader
end

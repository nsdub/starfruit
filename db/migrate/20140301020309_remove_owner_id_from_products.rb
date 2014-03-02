class RemoveOwnerIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :owner_id
  end
end

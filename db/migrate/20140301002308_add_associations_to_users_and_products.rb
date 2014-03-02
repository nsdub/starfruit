class AddAssociationsToUsersAndProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.belongs_to :user
    end
  end
end

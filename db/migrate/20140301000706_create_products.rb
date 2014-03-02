class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :asset
      t.integer :owner_id

      t.timestamps
    end
  end
end

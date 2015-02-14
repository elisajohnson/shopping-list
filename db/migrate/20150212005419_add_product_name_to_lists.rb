class AddProductNameToLists < ActiveRecord::Migration
  def change
    add_column :lists, :product_name, :string
  end
end

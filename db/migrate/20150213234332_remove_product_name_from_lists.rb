class RemoveProductNameFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :product_name, :string
  end
end

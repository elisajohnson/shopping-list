class AddProductToLists < ActiveRecord::Migration
  def change
    add_column :lists, :product, :string
  end
end

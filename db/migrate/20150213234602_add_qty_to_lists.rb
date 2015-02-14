class AddQtyToLists < ActiveRecord::Migration
  def change
    add_column :lists, :qty, :integer
  end
end

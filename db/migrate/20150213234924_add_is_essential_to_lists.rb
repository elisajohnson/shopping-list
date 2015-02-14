class AddIsEssentialToLists < ActiveRecord::Migration
  def change
    add_column :lists, :is_essential, :boolean
  end
end

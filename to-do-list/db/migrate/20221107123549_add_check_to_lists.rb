class AddCheckToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :check, :boolean, default: false
  end
end

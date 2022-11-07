class RemoveCheckFromLists < ActiveRecord::Migration[7.0]
  def change
    remove_column :lists, :check, :boolean
  end
end

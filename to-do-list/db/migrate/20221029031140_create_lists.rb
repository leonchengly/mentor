class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :description
      t.boolean :check
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :category, null: false
      t.string :model, null: false
      t.string :maker
      t.date :made
      t.string :engineer
      t.string :image
      t.timestamps
    end
  end
end

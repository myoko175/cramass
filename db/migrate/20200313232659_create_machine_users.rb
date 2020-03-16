class CreateMachineUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :machine_users do |t|
      t.references :machine, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

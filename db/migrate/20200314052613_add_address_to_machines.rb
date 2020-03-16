class AddAddressToMachines < ActiveRecord::Migration[5.2]
  def change
    add_column :machines, :address, :string
  end
end

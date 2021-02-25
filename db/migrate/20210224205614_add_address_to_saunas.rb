class AddAddressToSaunas < ActiveRecord::Migration[6.0]
  def change
    add_column :saunas, :address, :string
  end
end

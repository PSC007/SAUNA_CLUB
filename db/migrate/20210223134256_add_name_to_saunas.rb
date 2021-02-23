class AddNameToSaunas < ActiveRecord::Migration[6.0]
  def change
    add_column :saunas, :name, :string
  end
end

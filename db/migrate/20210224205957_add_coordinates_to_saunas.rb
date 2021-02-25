class AddCoordinatesToSaunas < ActiveRecord::Migration[6.0]
  def change
    add_column :saunas, :latitude, :float
    add_column :saunas, :longitude, :float
  end
end

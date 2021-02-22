class CreateSaunas < ActiveRecord::Migration[6.0]
  def change
    create_table :saunas do |t|
      t.string :seat
      t.text :description
      t.string :temperature
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

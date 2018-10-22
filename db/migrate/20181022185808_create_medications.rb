class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :name
      t.decimal :price
      t.integer :duration_of_supply_in_months

      t.timestamps
    end
  end
end

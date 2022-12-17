class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :marque
      t.string :modele
      t.text :adresse
      t.integer :prix

      t.timestamps
    end
  end
end

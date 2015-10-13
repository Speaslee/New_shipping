class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :destination
      t.string :description
      t.integer :number_of_crates
      t.integer :profit_per_crates
    end
  end
end

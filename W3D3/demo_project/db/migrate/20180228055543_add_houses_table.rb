class AddHousesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :person_id

      t.timestamp
    end
  end
end

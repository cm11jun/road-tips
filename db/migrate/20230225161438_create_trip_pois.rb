class CreateTripPois < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_pois do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :poi, null: false, foreign_key: true

      t.timestamps
    end
  end
end

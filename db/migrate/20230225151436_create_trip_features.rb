class CreateTripFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_features do |t|
      t.references :feature, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end

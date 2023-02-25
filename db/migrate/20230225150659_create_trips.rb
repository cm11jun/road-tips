class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :start_point
      t.string :end_point
      t.string :region

      t.timestamps
    end
  end
end

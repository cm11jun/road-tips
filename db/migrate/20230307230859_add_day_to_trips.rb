class AddDayToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :day, :string
  end
end

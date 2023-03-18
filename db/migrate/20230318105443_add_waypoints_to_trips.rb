class AddWaypointsToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :waypoints, :text, array: true
  end
end

class UpdateWayPointInTriop < ActiveRecord::Migration[7.0]
  def change
    rename_column :trips, :waypoints, :waypoint
  end
end

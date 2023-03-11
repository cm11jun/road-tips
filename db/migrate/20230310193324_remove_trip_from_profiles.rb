class RemoveTripFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_reference :profiles, :trip, null: false, foreign_key: true
  end
end

class AddTitleToTrip < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :title, :string
  end
end

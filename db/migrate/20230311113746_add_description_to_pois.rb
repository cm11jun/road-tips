class AddDescriptionToPois < ActiveRecord::Migration[7.0]
  def change
    add_column :pois, :description, :text
  end
end

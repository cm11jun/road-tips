class RemoveDescriptionFromPois < ActiveRecord::Migration[7.0]
  def change
    remove_column :pois, :description, :string
  end
end

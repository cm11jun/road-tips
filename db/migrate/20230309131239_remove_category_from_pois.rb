class RemoveCategoryFromPois < ActiveRecord::Migration[7.0]
  def change
    remove_column :pois, :category, :string
  end
end

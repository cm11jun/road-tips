class AddCategoryToPois < ActiveRecord::Migration[7.0]
  def change
    add_column :pois, :category, :string
  end
end

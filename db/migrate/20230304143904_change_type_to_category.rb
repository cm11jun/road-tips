class ChangeTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :pois, :type, :category
  end
end

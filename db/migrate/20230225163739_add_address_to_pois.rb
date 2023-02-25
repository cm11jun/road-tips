class AddAddressToPois < ActiveRecord::Migration[7.0]
  def change
    add_column :pois, :address, :string
  end
end

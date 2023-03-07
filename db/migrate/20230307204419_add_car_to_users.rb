class AddCarToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :car, :string
  end
end

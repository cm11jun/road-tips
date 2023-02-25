class CreatePois < ActiveRecord::Migration[7.0]
  def change
    create_table :pois do |t|
      t.string :name
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end

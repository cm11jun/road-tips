class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end

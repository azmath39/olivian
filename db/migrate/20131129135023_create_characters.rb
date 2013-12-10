class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :address
      t.boolean :gmaps
      t.float :latitude
      t.float :longitude
      t.string :name

      t.timestamps
    end
  end
end

class CreateBreweries < ActiveRecord::Migration[7.1]
  def change
    create_table :breweries do |t|
      t.string :brewery_id
      t.string :name
      t.string :type
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end

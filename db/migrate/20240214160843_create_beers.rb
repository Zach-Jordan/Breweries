class CreateBeers < ActiveRecord::Migration[7.1]
  def change
    create_table :beers do |t|
      t.string :beer_id
      t.string :name
      t.string :style
      t.float :abv
      t.references :brewery, null: false, foreign_key: true

      t.timestamps
    end
  end
end

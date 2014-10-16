class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.text :brand
      t.string :photo_url
      t.text :price
      t.boolean :instock

      t.timestamps
    end
  end
end

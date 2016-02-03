class CreateWildlives < ActiveRecord::Migration
  def change
    create_table :wildlives do |t|
      t.string :name
      t.string :size
      t.integer :copies
      t.integer :cost
      t.string :image

      t.timestamps null: false
    end
  end
end

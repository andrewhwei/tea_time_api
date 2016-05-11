class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :name
      t.string :origin
      t.integer :weight
      t.boolean :in_stock

      t.timestamps null: true
    end
  end
end

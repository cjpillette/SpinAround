class CreateYarns < ActiveRecord::Migration[5.0]
  def change
    create_table :yarns do |t|
      t.integer :weight
      t.integer :dye
      t.integer :spinned_as
      t.integer :metrage
      t.decimal :diameter
      t.integer :ply
      t.string :color
      t.string :origin
      t.text :description

      t.timestamps
    end
  end
end

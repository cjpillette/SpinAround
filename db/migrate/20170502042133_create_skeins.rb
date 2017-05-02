class CreateSkeins < ActiveRecord::Migration[5.0]
  def change
    create_table :skeins do |t|
      t.decimal :price
      t.references :spinned_by, foreign_key: { to_table: :users }
      t.integer :skein_available
      t.string :photo_main
      t.references :yarn, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCompositions < ActiveRecord::Migration[5.0]
  def change
    create_table :compositions do |t|
      t.references :fibre_type, foreign_key: true
      t.integer :percent_content
      t.references :yarn, foreign_key: true

      t.timestamps
    end
  end
end

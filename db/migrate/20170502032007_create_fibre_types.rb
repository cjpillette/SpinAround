class CreateFibreTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :fibre_types do |t|
      t.string :name
      t.boolean :isAnimal

      t.timestamps
    end
  end
end

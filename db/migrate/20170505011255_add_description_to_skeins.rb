class AddDescriptionToSkeins < ActiveRecord::Migration[5.0]
  def change
    add_column :skeins, :description, :text
  end
end

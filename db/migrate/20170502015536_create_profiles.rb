class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :is_guild_member
      t.string :street_address
      t.string :suburb
      t.string :postcode
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

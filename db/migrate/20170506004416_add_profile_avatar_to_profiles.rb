class AddProfileAvatarToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :profile_avatar, :string
  end
end

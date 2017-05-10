class Skein < ApplicationRecord
  belongs_to :spinned_by, class_name: 'User'
  belongs_to :yarn
  belongs_to :cart

  validates_presence_of :price
  mount_uploader :photo_main, AvatarUploader

 def self.search(search)
    if search
      where(["description LIKE ?","%#{search.downcase}%"])
    else
      all
    end
  end

end

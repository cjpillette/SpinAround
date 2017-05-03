class Skein < ApplicationRecord
  belongs_to :spinned_by, class_name: 'User'
  belongs_to :yarn

  validates_presence_of :price
  mount_uploader :photo_main, AvatarUploader
end

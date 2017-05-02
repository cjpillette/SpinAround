class Skein < ApplicationRecord
  belongs_to :spinned_by, class_name: 'User'
  belongs_to :yarn
end

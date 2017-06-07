class Skein < ApplicationRecord
  belongs_to :spinned_by, class_name: 'User'
  belongs_to :yarn
  belongs_to :cart
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  validates_presence_of :price
  mount_uploader :photo_main, AvatarUploader

 def self.search(search)
    if search
      where(["description LIKE ?","%#{search.downcase}%"])
    else
      all
    end
  end

private
    # ensure that there are no line items referencing this product
def ensure_not_referenced_by_any_line_item
  unless line_items.empty?
    errors.add(:base, 'Line Items present')
    throw :abort
  end
end

end

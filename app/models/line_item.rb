class LineItem < ApplicationRecord
  belongs_to :skein
  belongs_to :cart

end

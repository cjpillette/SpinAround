class LineItem < ApplicationRecord
  belongs_to :skein
  belongs_to :cart

  def total_price
    skein.price * quantity
  end

end

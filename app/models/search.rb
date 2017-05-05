class Search < ApplicationRecord

  def search_skeins

    skeins = Skein.all

    skeins = skeins.where(["description LIKE ?","%#{keywords.downcase}%"]) if keywords.present?
    skeins = skeins.where(["price >= ?", min_price]) if min_price.present?
    skeins = skeins.where(["price <= ?", max_price]) if max_price.present?

    return skeins
  end

end

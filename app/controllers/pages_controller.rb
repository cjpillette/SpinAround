class PagesController < ApplicationController
  def index
  end

  def cart
    @skeins = Skein.all
    @selected_skeins = @skeins.where(id: params[:skein_ids])
    @cart_total = @selected_skeins.inject(0){|sum, hash| sum + hash[:price] }
  end

end

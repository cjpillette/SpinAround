class PagesController < ApplicationController
  def index
  end

  def contact
  end

  def cart
    @skeins = Skein.all
    #@selected_skeins = @skeins.where(id: params[:skein_ids])
    @selected_skeins = []
    @quantities = params[:skein_quantity]
    @cart_total = 0
    @quantities.each_with_index do |quantity, index|
      quantity = quantity.to_i
      if quantity > 0
        skein_id = params[:skein_ids][index]
        skein = Skein.find(skein_id)
        @cart_total += (skein.price * quantity)
        @selected_skeins << skein
      end
    end
  end

end

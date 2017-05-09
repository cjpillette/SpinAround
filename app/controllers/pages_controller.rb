class PagesController < ApplicationController
  def index
  end

  def cart
    @skeins = Skein.all
    @selected_skeins = @skeins.where(id: params[:skein_ids])
  end

end

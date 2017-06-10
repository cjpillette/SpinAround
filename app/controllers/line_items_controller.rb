class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /line_items
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end


  def create
    skein = Skein.find(params[:skein_id])
    @line_item = @cart.add_product(skein.id)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart}
        format.json { render :show,
          status: :created, location: @line_item }
      else
          format.html { render :new }
          format.json { render json: @line_item.errors,
            status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /line_items/1
  def update
    if @line_item.update(line_item_params)
      redirect_to @line_item, notice: 'Line item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /line_items/1
  def destroy
    @line_item.destroy
    redirect_to line_items_url, notice: 'Line item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def line_item_params
      params.require(:line_item).permit(:skein_id, :cart_id)
    end
end

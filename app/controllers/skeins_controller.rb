class SkeinsController < ApplicationController
  before_action :set_skein, only: [:show, :edit, :update, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all, spinner_seller: :all

  # GET /skeins
  # GET /skeins.json
  def index
    @skeins = Skein.order(created_at: :desc).page(params[:page]).per(3)
  end

  # GET /skeins/1
  # GET /skeins/1.json
  def show
  end

  # GET /skeins/new
  def new
    @skein = Skein.new
  end

  # GET /skeins/1/edit
  def edit
  end

  # POST /skeins
  # POST /skeins.json
  def create
    @skein = Skein.new(skein_params)

    respond_to do |format|
      if @skein.save
        format.html { redirect_to @skein, notice: 'Skein was successfully created.' }
        format.json { render :show, status: :created, location: @skein }
      else
        format.html { render :new }
        format.json { render json: @skein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skeins/1
  # PATCH/PUT /skeins/1.json
  def update
    respond_to do |format|
      if @skein.update(skein_params)
        format.html { redirect_to @skein, notice: 'Skein was successfully updated.' }
        format.json { render :show, status: :ok, location: @skein }
      else
        format.html { render :edit }
        format.json { render json: @skein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skeins/1
  # DELETE /skeins/1.json
  def destroy
    @skein.destroy
    respond_to do |format|
      format.html { redirect_to skeins_url, notice: 'Skein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skein
      @skein = Skein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skein_params
      params.require(:skein).permit(:price, :spinned_by_id, :skein_available, :photo_main, :description, :yarn_id, :name)
    end
end

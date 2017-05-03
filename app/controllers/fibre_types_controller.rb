class FibreTypesController < ApplicationController
  before_action :set_fibre_type, only: [:show, :edit, :update, :destroy]

  # GET /fibre_types
  # GET /fibre_types.json
  def index
    @fibre_types = FibreType.all
  end

  # GET /fibre_types/1
  # GET /fibre_types/1.json
  def show
  end

  # GET /fibre_types/new
  def new
    @fibre_type = FibreType.new
  end

  # GET /fibre_types/1/edit
  def edit
  end

  # POST /fibre_types
  # POST /fibre_types.json
  def create
    @fibre_type = FibreType.new(fibre_type_params)

    respond_to do |format|
      if @fibre_type.save
        format.html { redirect_to @fibre_type, notice: 'Fibre type was successfully created.' }
        format.json { render :show, status: :created, location: @fibre_type }
      else
        format.html { render :new }
        format.json { render json: @fibre_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fibre_types/1
  # PATCH/PUT /fibre_types/1.json
  def update
    respond_to do |format|
      if @fibre_type.update(fibre_type_params)
        format.html { redirect_to @fibre_type, notice: 'Fibre type was successfully updated.' }
        format.json { render :show, status: :ok, location: @fibre_type }
      else
        format.html { render :edit }
        format.json { render json: @fibre_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fibre_types/1
  # DELETE /fibre_types/1.json
  def destroy
    @fibre_type.destroy
    respond_to do |format|
      format.html { redirect_to fibre_types_url, notice: 'Fibre type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fibre_type
      @fibre_type = FibreType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fibre_type_params
      params.require(:fibre_type).permit(:name, :isAnimal)
    end
end

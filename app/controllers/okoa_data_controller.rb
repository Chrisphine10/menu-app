class OkoaDataController < ApplicationController
  before_action :set_okoa_datum, only: [:show, :update, :destroy]

  # GET /okoa_data
  def index
    @okoa_data = OkoaDatum.all

    render json: @okoa_data
  end

  # GET /okoa_data/1
  def show
    render json: @okoa_datum
  end

  # POST /okoa_data
  def create
    @okoa_datum = OkoaDatum.new(okoa_datum_params)

    if @okoa_datum.save
      render json: @okoa_datum, status: :created, location: @okoa_datum
    else
      render json: @okoa_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /okoa_data/1
  def update
    if @okoa_datum.update(okoa_datum_params)
      render json: @okoa_datum
    else
      render json: @okoa_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /okoa_data/1
  def destroy
    @okoa_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_okoa_datum
      @okoa_datum = OkoaDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def okoa_datum_params
      params.require(:okoa_datum).permit(:description, :data_id)
    end
end

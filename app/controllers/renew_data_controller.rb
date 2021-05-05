class RenewDataController < ApplicationController
  before_action :set_renew_datum, only: [:show, :update, :destroy]

  # GET /renew_data
  def index
    @renew_data = RenewDatum.all

    render json: @renew_data
  end

  # GET /renew_data/1
  def show
    render json: @renew_datum
  end

  # POST /renew_data
  def create
    @renew_datum = RenewDatum.new(renew_datum_params)

    if @renew_datum.save
      render json: @renew_datum, status: :created, location: @renew_datum
    else
      render json: @renew_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /renew_data/1
  def update
    if @renew_datum.update(renew_datum_params)
      render json: @renew_datum
    else
      render json: @renew_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /renew_data/1
  def destroy
    @renew_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renew_datum
      @renew_datum = RenewDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def renew_datum_params
      params.require(:renew_datum).permit(:description, :data_id)
    end
end

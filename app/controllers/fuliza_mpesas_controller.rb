class FulizaMpesasController < ApplicationController
  before_action :set_fuliza_mpesa, only: [:show, :update, :destroy]

  # GET /fuliza_mpesas
  def index
    @fuliza_mpesas = FulizaMpesa.all

    render json: @fuliza_mpesas
  end

  # GET /fuliza_mpesas/1
  def show
    render json: @fuliza_mpesa
  end

  # POST /fuliza_mpesas
  def create
    @fuliza_mpesa = FulizaMpesa.new(fuliza_mpesa_params)

    if @fuliza_mpesa.save
      render json: @fuliza_mpesa, status: :created, location: @fuliza_mpesa
    else
      render json: @fuliza_mpesa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fuliza_mpesas/1
  def update
    if @fuliza_mpesa.update(fuliza_mpesa_params)
      render json: @fuliza_mpesa
    else
      render json: @fuliza_mpesa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fuliza_mpesas/1
  def destroy
    @fuliza_mpesa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuliza_mpesa
      @fuliza_mpesa = FulizaMpesa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fuliza_mpesa_params
      params.require(:fuliza_mpesa).permit(:description, :mpesa_id)
    end
end

class MpesasController < ApplicationController
  before_action :set_mpesa, only: [:show, :update, :destroy]

  # GET /mpesas
  def index
    @mpesas = Mpesa.all

    render json: @mpesas
  end

  # GET /mpesas/1
  def show
    render json: @mpesa
  end

  # POST /mpesas
  def create
    @mpesa = Mpesa.new(mpesa_params)

    if @mpesa.save
      render json: @mpesa, status: :created, location: @mpesa
    else
      render json: @mpesa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mpesas/1
  def update
    if @mpesa.update(mpesa_params)
      render json: @mpesa
    else
      render json: @mpesa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mpesas/1
  def destroy
    @mpesa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mpesa
      @mpesa = Mpesa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mpesa_params
      params.require(:mpesa).permit(:decription, :menu_id)
    end
end

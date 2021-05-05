class WithdrawMpesasController < ApplicationController
  before_action :set_withdraw_mpesa, only: [:show, :update, :destroy]

  # GET /withdraw_mpesas
  def index
    @withdraw_mpesas = WithdrawMpesa.all

    render json: @withdraw_mpesas
  end

  # GET /withdraw_mpesas/1
  def show
    render json: @withdraw_mpesa
  end

  # POST /withdraw_mpesas
  def create
    @withdraw_mpesa = WithdrawMpesa.new(withdraw_mpesa_params)

    if @withdraw_mpesa.save
      render json: @withdraw_mpesa, status: :created, location: @withdraw_mpesa
    else
      render json: @withdraw_mpesa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /withdraw_mpesas/1
  def update
    if @withdraw_mpesa.update(withdraw_mpesa_params)
      render json: @withdraw_mpesa
    else
      render json: @withdraw_mpesa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /withdraw_mpesas/1
  def destroy
    @withdraw_mpesa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_withdraw_mpesa
      @withdraw_mpesa = WithdrawMpesa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def withdraw_mpesa_params
      params.require(:withdraw_mpesa).permit(:description, :mpesa_id)
    end
end

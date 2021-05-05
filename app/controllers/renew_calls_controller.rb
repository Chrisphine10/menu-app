class RenewCallsController < ApplicationController
  before_action :set_renew_call, only: [:show, :update, :destroy]

  # GET /renew_calls
  def index
    @renew_calls = RenewCall.all

    render json: @renew_calls
  end

  # GET /renew_calls/1
  def show
    render json: @renew_call
  end

  # POST /renew_calls
  def create
    @renew_call = RenewCall.new(renew_call_params)

    if @renew_call.save
      render json: @renew_call, status: :created, location: @renew_call
    else
      render json: @renew_call.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /renew_calls/1
  def update
    if @renew_call.update(renew_call_params)
      render json: @renew_call
    else
      render json: @renew_call.errors, status: :unprocessable_entity
    end
  end

  # DELETE /renew_calls/1
  def destroy
    @renew_call.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renew_call
      @renew_call = RenewCall.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def renew_call_params
      params.require(:renew_call).permit(:description, :call_id)
    end
end

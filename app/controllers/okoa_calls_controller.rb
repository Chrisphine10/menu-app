class OkoaCallsController < ApplicationController
  before_action :set_okoa_call, only: [:show, :update, :destroy]

  # GET /okoa_calls
  def index
    @okoa_calls = OkoaCall.all

    render json: @okoa_calls
  end

  # GET /okoa_calls/1
  def show
    render json: @okoa_call
  end

  # POST /okoa_calls
  def create
    @okoa_call = OkoaCall.new(okoa_call_params)

    if @okoa_call.save
      render json: @okoa_call, status: :created, location: @okoa_call
    else
      render json: @okoa_call.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /okoa_calls/1
  def update
    if @okoa_call.update(okoa_call_params)
      render json: @okoa_call
    else
      render json: @okoa_call.errors, status: :unprocessable_entity
    end
  end

  # DELETE /okoa_calls/1
  def destroy
    @okoa_call.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_okoa_call
      @okoa_call = OkoaCall.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def okoa_call_params
      params.require(:okoa_call).permit(:description, :call_id)
    end
end

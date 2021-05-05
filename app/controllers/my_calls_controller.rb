class MyCallsController < ApplicationController
  before_action :set_my_call, only: [:show, :update, :destroy]

  # GET /my_calls
  def index
    @my_calls = MyCall.all

    render json: @my_calls
  end

  # GET /my_calls/1
  def show
    render json: @my_call
  end

  # POST /my_calls
  def create
    @my_call = MyCall.new(my_call_params)

    if @my_call.save
      render json: @my_call, status: :created, location: @my_call
    else
      render json: @my_call.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_calls/1
  def update
    if @my_call.update(my_call_params)
      render json: @my_call
    else
      render json: @my_call.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_calls/1
  def destroy
    @my_call.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_call
      @my_call = MyCall.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_call_params
      params.require(:my_call).permit(:description, :call_id)
    end
end

class MyMpesasController < ApplicationController
  before_action :set_my_mpesa, only: [:show, :update, :destroy]

  # GET /my_mpesas
  def index
    @my_mpesas = MyMpesa.all

    render json: @my_mpesas
  end

  # GET /my_mpesas/1
  def show
    render json: @my_mpesa
  end

  # POST /my_mpesas
  def create
    @my_mpesa = MyMpesa.new(my_mpesa_params)

    if @my_mpesa.save
      render json: @my_mpesa, status: :created, location: @my_mpesa
    else
      render json: @my_mpesa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_mpesas/1
  def update
    if @my_mpesa.update(my_mpesa_params)
      render json: @my_mpesa
    else
      render json: @my_mpesa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_mpesas/1
  def destroy
    @my_mpesa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_mpesa
      @my_mpesa = MyMpesa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_mpesa_params
      params.require(:my_mpesa).permit(:description, :mpesa_id)
    end
end

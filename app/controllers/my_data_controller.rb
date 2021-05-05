class MyDataController < ApplicationController
  before_action :set_my_datum, only: [:show, :update, :destroy]

  # GET /my_data
  def index
    @my_data = MyDatum.all

    render json: @my_data
  end

  # GET /my_data/1
  def show
    render json: @my_datum
  end

  # POST /my_data
  def create
    @my_datum = MyDatum.new(my_datum_params)

    if @my_datum.save
      render json: @my_datum, status: :created, location: @my_datum
    else
      render json: @my_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_data/1
  def update
    if @my_datum.update(my_datum_params)
      render json: @my_datum
    else
      render json: @my_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_data/1
  def destroy
    @my_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_datum
      @my_datum = MyDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_datum_params
      params.require(:my_datum).permit(:description, :data_id)
    end
end

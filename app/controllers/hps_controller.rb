class HpsController < ApplicationController
  before_action :set_hp, only: [:show, :update, :destroy]

  # GET /hps
  def index
    @hps = Hp.all

    render json: @hps
  end

  # GET /hps/1
  def show
    render json: @hp
  end

  # POST /hps
  def create
    @hp = Hp.new(hp_params)

    if @hp.save
      render json: @hp, status: :created, location: @hp
    else
      render json: @hp.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hps/1
  def update
    if @hp.update(hp_params)
      render json: @hp
    else
      render json: @hp.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hps/1
  def destroy
    @hp.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hp
      @hp = Hp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hp_params
      params.require(:hp).permit(:name, :colour)
    end
end

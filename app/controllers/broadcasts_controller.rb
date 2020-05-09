class BroadcastsController < ApplicationController
  before_action :set_broadcast, only: [:show, :update, :destroy]

  # GET /broadcasts
  def index
    @broadcasts = Broadcast.all

    render json: @broadcasts
  end

  # GET /broadcasts/1
  def show
    render json: @broadcast
  end

  # POST /broadcasts
  def create
    @broadcast = Broadcast.new(broadcast_params)

    if @broadcast.save
      render json: @broadcast, status: :created, location: @broadcast
    else
      render json: @broadcast.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /broadcasts/1
  def update
    if @broadcast.update(broadcast_params)
      render json: @broadcast
    else
      render json: @broadcast.errors, status: :unprocessable_entity
    end
  end

  # DELETE /broadcasts/1
  def destroy
    @broadcast.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broadcast
      @broadcast = Broadcast.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def broadcast_params
      params.require(:broadcast).permit(:with, :from)
    end
end

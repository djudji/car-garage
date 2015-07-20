class LevelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_level, only: [:create_slot, :destroy]

  # GET /levels
  # GET /levels.json
  def index
    @levels = Level.all
  end

  def create_slot
    @level.slots.build
    respond_to do |format|
      if @level.save
        format.html { redirect_to levels_url, notice: 'Slot was successfully created.' }
        format.json { render :show, status: :created, location: @level }
      else
        format.html { redirect_to levels_url, notice: 'Something went wrong.' }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /levels
  # POST /levels.json
  def create
    @level = Level.new

    respond_to do |format|
      if @level.save
        format.html { redirect_to levels_url, notice: 'Level was successfully created.' }
        format.json { render :show, status: :created, location: @level }
      else
        format.html { redirect_to levels_url, notice: 'Something went wrong.' }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /levels/1
  # DELETE /levels/1.json
  def destroy
    # Here we insure that there still exist more than a level before destroying.
    if Level.count > 1
      @level.destroy
      respond_to do |format|
        format.html { redirect_to levels_url, notice: 'Level was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to levels_url, notice: 'You can\'t delete last Level.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level
      @level = Level.find(params[:id])
    end
end

require 'observer'
require './app/policies/gym_class_final_policy'
class GymClassFinalsController < ApplicationController
  include Observable

  before_action :set_gym_class_final, only: [:show, :edit, :update, :destroy]

  # GET /gym_class_finals
  # GET /gym_class_finals.json
  def index
    @gym_class_finals = GymClassFinal.all
  end

  # GET /gym_class_finals/1
  # GET /gym_class_finals/1.json
  def show
  end

  # GET /gym_class_finals/new
  def new
    @gym_class_final = GymClassFinal.new

  end

  # GET /gym_class_finals/1/edit
  def edit
  end
  def gym_class_final_policy
    @_gym_class_final_policy ||= GymClassFinalPolicy.new(gym_class_final)
  end 

  # POST /gym_class_finals
  # POST /gym_class_finals.json
  def create
    @gym_class_final = GymClassFinal.new(gym_class_final_params)
    authorize @gym_class_final
    changed
    notify_observers(self, gym_class_final_params)

    respond_to do |format|
      if @gym_class_final.save
        format.html { redirect_to @gym_class_final, notice: 'Gym class final was successfully created.' }
        format.json { render :show, status: :created, location: @gym_class_final }
      else
        format.html { render :new }
        format.json { render json: @gym_class_final.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gym_class_finals/1
  # PATCH/PUT /gym_class_finals/1.json
  def update
    authorize @gym_class_final

    respond_to do |format|
      if @gym_class_final.update(gym_class_final_params)
        format.html { redirect_to @gym_class_final, notice: 'Gym class final was successfully updated.' }
        format.json { render :show, status: :ok, location: @gym_class_final }
      else
        format.html { render :edit }
        format.json { render json: @gym_class_final.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gym_class_finals/1
  # DELETE /gym_class_finals/1.json
  def destroy
    authorize @gym_class_final

    @gym_class_final.destroy
    respond_to do |format|
      format.html { redirect_to gym_class_finals_url, notice: 'Gym class final was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym_class_final
      @gym_class_final = GymClassFinal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gym_class_final_params
      params.require(:gym_class_final).permit(:personal_trainer_id, :Type, :PTName, :Date, :Time)
    end
end

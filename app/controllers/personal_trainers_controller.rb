require './app/policies/personal_trainer_policy'
class PersonalTrainersController < ApplicationController
  before_action :set_personal_trainer, only: [:show, :edit, :update, :destroy]

  # GET /personal_trainers
  # GET /personal_trainers.json
  def index
    @personal_trainers = PersonalTrainer.all

  end

  # GET /personal_trainers/1
  # GET /personal_trainers/1.json
  def show

  end

  # GET /personal_trainers/new
  def new
    @personal_trainer = PersonalTrainer.new
  end

  # GET /personal_trainers/1/edit
  def edit
  end
  def personal_trainer_policy
    @_personal_trainer_policy ||= PersonalTrainerPolicy.new(personal_trainer)
  end 

  # POST /personal_trainers
  # POST /personal_trainers.json
  def create
    @personal_trainer = PersonalTrainer.new(personal_trainer_params)
    authorize @personal_trainer
    if @personal_trainer.persisted
      render json: @personal_trainer.record
    else
      render json: @personal_trainer.errors, status: :unpocessably_entity
    end

    respond_to do |format|
      if @personal_trainer.save
        format.html { redirect_to @personal_trainer, notice: 'Personal trainer was successfully created.' }
        format.json { render :show, status: :created, location: @personal_trainer }
      else
        format.html { render :new }
        format.json { render json: @personal_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_trainers/1
  # PATCH/PUT /personal_trainers/1.json
  def update
    authorize @personal_trainer

    respond_to do |format|
      if @personal_trainer.update(personal_trainer_params)
        format.html { redirect_to @personal_trainer, notice: 'Personal trainer was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_trainer }
      else
        format.html { render :edit }
        format.json { render json: @personal_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_trainers/1
  # DELETE /personal_trainers/1.json
  def destroy
    authorize @personal_trainer

    @personal_trainer.destroy
    respond_to do |format|
      format.html { redirect_to personal_trainers_url, notice: 'Personal trainer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_trainer
      @personal_trainer = PersonalTrainer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_trainer_params
      params.require(:personal_trainer).permit(:firstName, :secondName, :desription, :amountOfClients)
    end
end

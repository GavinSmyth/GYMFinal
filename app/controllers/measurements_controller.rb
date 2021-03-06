
class MeasurementsController < ApplicationController
  before_action :set_measurement, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def converter
    @input1 = params[:value]
    @input2 = params[:unit]
    @result = ::Lib::ChangeWeight.instance.conversions(@input1.to_i , @input2.to_sym)
    @measurements = Measurement.where(:user_id => current_user.id)
    cookies[:email] = current_user.email
    @email = cookies[:email]
    cookies[:time] = Time.now
    @time = cookies[:time]
    render :index
    end
    

    
  


  # GET /measurements
  # GET /measurements.json
  def index 
    
    @measurements = Measurement.where(:user_id => current_user.id)
    cookies[:email] = current_user.email
    @email = cookies[:email]
    cookies[:time] = Time.now
    @time = cookies[:time]
    


  end

  # GET /measurements/1 	
  # GET /measurements/1.json
  def show
  end

  # GET /measurements/new
  def new
    @measurement = Measurement.new
  end

  # GET /measurements/1/edit
  def edit
  end

  # POST /measurements
  # POST /measurements.json
  def create
    @measurement = Measurement.new(measurement_params)
    @measurement.user = current_user

    respond_to do |format|
      if @measurement.save
        format.html { redirect_to @measurement, notice: 'Measurement was successfully created.' }
        format.json { render :show, status: :created, location: @measurement }
      else
        format.html { render :new }
        format.json { render json: @measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurements/1
  # PATCH/PUT /measurements/1.json
  def update
    respond_to do |format|
      if @measurement.update(measurement_params)
        format.html { redirect_to @measurement, notice: 'Measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurement }
      else
        format.html { render :edit }
        format.json { render json: @measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurements/1
  # DELETE /measurements/1.json
  def destroy
    @measurement.destroy
    respond_to do |format|
      format.html { redirect_to measurements_url, notice: 'Measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement
      @measurement = Measurement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def measurement_params
      params.require(:measurement).permit(:week, :weightKG, :weightStone, :weightPounds, :BodyFat)
    end
  

    
       
end

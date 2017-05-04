class RegistersController < ApplicationController

  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @registers = Register.all

    #if @register.length == 0
     # flash[:alert] = "You have no appointments."
    #end
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  	@regster = Register.find_by(params[:id])
  end

  # GET /appointments/new
  def new
    
     @register = Register.new
   
  end


  def edit
  	@regster = Register.find_by(params[:id])
  end

  def create
    
    
    
   @register = Register.new(register_params)

    respond_to do |format|
      if @register.save
           UserMailer.welcome_email(@register).deliver
        format.html { redirect_to @register, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @register }
      else
        format.html { redirect_to new_register_path, notice: 'Already booked.'}
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    
      if @register.update(register_params)
        redirect_to @register, notice: 'Appointment was successfully updated.' 
       
      else
         render :edit 
      
      end
    
  end

  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @register = Register.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:name, :email,:purpose,:time,:endtime)
    end


end

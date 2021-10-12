class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def show
    @appointment=Appointment.find(params[:id])
    render json: @appointment
  end

  def new
    @appointment = Appointment.new(:appt_params)
  end

  def create
     @appointment = Appointment.new(appt_params)
    #  @appointment.user_id=current_user.id
      if @appointment.save
        render json: @appointment 
      else
        render json: @appointment.errors, status: :unprocessable_entity
      end   
  end

  private

  def appt_params
    params.require(:appointment).permit(:apptdate, :appttime, :saloonspa_id, :service, :client_id, :user_id)
  end
end

class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    render json: @appointments
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

  def update
  end

  def destroy
  end

  private

  def appt_params
    params.require(:appointment).permit(:apptdate, :appttime, :saloonspa_id, :service, :client_id, :user_id)
  end
end

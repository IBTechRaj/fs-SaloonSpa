class SaloonspasController < ApplicationController
  def index
    
    @spas=Saloonspa.all
    render json: @spas

  end

  def show
    @spa=Saloonspa.find(params[:id])
    @appointments=Appointment.where(saloonspa_id: @spa.id)
    render json: @appointments
  end

  def new
  end

  def create
  end

  private

  def saloonspa_params
    params.require(:saloonspa).permit( :name, :address, :pincode, :gstin, :pan, :chairs)
  end
end


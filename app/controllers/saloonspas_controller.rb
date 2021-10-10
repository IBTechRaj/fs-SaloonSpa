class SaloonspasController < ApplicationController
  def index
    @spas = Saloonspa.all
    render json:  @spas 
    # json_response(@spas)
  end

  def show
    @spa=Saloonspa.find(params[:id])
    
  end

  private

  def params
    params.require(:saloonspa).permit(:name, :address, :pincode, :gstin, :pan, :chairs)
  end
end

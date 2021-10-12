class ServicesController < ApplicationController

  def index
    @services=Service.all.order("sprice")
    render json: @services
  end

end

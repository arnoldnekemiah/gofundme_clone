class ServicesController < ApplicationController
    def index
      @services = Service.all
    end
  
    def show
      @service = Service.find(params[:id])
    end
  
    def create
      @service = Service.new(service_params)
      if @service.save
        render json: @service, status: :created
      else
        render json: @service.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def service_params
      params.require(:service).permit(:user_id, :title, :description, :price)
    end
  end
  
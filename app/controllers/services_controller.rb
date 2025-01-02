class ServicesController < ApplicationController
    def index
      @services = Service.all
      render json: @services
    end
  
    def show
      @service = Service.find(params[:id])
      render json: @service
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
  
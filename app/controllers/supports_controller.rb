class SupportsController < ApplicationController
    def index
      @supports = Support.all
      render json: @supports
    end
  
    def show
      @support = Support.find(params[:id])
      render json: @support
    end
  
    def create
      @support = Support.new(support_params)
      if @support.save
        render json: @support, status: :created
      else
        render json: @support.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def support_params
      params.require(:support).permit(:user_id, :service_id, :amount, :status, :payment_reference)
    end
  end
  
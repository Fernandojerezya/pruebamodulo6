# app/controllers/applications_controller.rb
class ApplicationController < ActionController::Base
    before_action :authenticate_user! # Requiere que el usuario esté autenticado antes de acceder a las acciones del controlador
  
    def create
      @job_offer = JobOffer.find(params[:job_offer_id])
      # Resto del código de la acción create...
    end
  
    def index
      @applications = current_user.applications
      # Resto del código de la acción index...
    end
  end
  
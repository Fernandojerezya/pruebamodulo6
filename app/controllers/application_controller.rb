# app/controllers/applications_controller.rb
class ApplicationController < ActionController::Base
    before_action :authenticate_admin!
    
  end
  
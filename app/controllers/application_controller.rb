class ApplicationController < ActionController::Base
    before_action :authenticate_admin!
  
    # Opcional: Define una acción para verificar la autenticación del administrador.
    def authenticate_admin!
      unless admin_signed_in?
        redirect_to new_admin_session_path, alert: 'Acceso denegado. Debes iniciar sesión como administrador.'
      end
    end
  end
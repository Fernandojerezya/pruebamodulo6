class HomeController < ApplicationController
  # Con el skip_before_action, evitamos que se aplique el filtro `authenticate_user!` a la acción `index`.
  skip_before_action :authenticate_admin!, only: [:index]

  # La acción `index` del controlador `HomeController` es responsable de mostrar la página de inicio (home).
  def index
    # Aquí estamos obteniendo todas las ofertas laborales (job offers) desde la base de datos y almacenándolas en la variable de instancia `@job_offers`.
    @job_offers = JobOffer.all
  end
end

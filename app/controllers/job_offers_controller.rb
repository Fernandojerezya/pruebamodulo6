class JobOffersController < ApplicationController
  # Listar todas las ofertas laborales
  def index
    @job_offers = JobOffer.all
  end

  # Mostrar detalles de una oferta laboral específica
  def show
    @job_offer = JobOffer.find(params[:id])
  end

  # Crear una nueva oferta laboral (formulario)
  def new
    @job_offer = JobOffer.new
  end

  # Guardar la nueva oferta laboral en la base de datos
  def create
    @job_offer = JobOffer.new(job_offer_params)
    if @job_offer.save
      redirect_to @job_offer, notice: 'Oferta laboral creada exitosamente.'
    else
      render :new
    end
  end

  # Editar una oferta laboral existente (formulario)
  def edit
    @job_offer = JobOffer.find(params[:id])
  end

  # Actualizar los datos de una oferta laboral en la base de datos
  def update
    @job_offer = JobOffer.find(params[:id])
    if @job_offer.update(job_offer_params)
      redirect_to @job_offer, notice: 'Oferta laboral actualizada exitosamente.'
    else
      render :edit
    end
  end

  # Eliminar una oferta laboral
  def destroy
    @job_offer = JobOffer.find(params[:id])
    @job_offer.destroy
    redirect_to job_offers_url, notice: 'Oferta laboral eliminada exitosamente.'
  end

  private

  # Parámetros permitidos para la creación o actualización de ofertas laborales
  def job_offer_params
    params.require(:job_offer).permit(:title, :description, :image_url)
  end
end

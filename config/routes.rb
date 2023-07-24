# config/routes.rb
Rails.application.routes.draw do
  devise_for :admins
  # Resto de tus rutas...

  resources :job_offers do
    resources :applications, only: [:create, :index]
  end

  # Define las rutas de Devise con el controlador personalizado
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Ruta para la página de inicio (root)
  root "job_offers#index"
end

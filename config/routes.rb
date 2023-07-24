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
  #ruta para el administrador 
  namespace :admin do
    resources :job_offers, except: [:show] # Crea todas las rutas RESTful para ofertas excepto la ruta "show".
    resources :users, only: [:new, :create , :edit , :destroy] # Solo crea rutas para la creación de perfiles de usuarios.
    get 'users/:id/edit_profile', to: 'users#edit_profile', as: 'edit_user_profile' # Ruta personalizada para editar perfil de usuario.
    patch 'users/:id/update_profile', to: 'users#update_profile', as: 'update_user_profile' # Ruta personalizada para actualizar perfil de usuario.
  end
  # Ruta para la página de inicio (root)
  root "job_offers#index"
end

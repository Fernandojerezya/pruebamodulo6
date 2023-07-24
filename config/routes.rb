# config/routes.rb
Rails.application.routes.draw do
  root 'home#index'
  # Resto de tus rutas...
  devise_for :admins
end

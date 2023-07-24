Rails.application.routes.draw do
  get 'job_offers/index'
  get 'job_offers/show'
  get 'job_offers/new'
  get 'job_offers/create'
  get 'job_offers/edit'
  get 'job_offers/update'
  get 'job_offers/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'
  # resources :home, defaults: { format: :json }

  get 'sobre', to: 'abouts#index', as: :abouts
  #resources :abouts, :only => [:index]

  get 'infraestrutura', to: 'infrastructures#index', as: :infrastructures
  #resources :infrastructures, only: [:index]

  resources :tours, only: [:index]
  resources :suppliers, only: [:index]
  resources :contacts
  #get 'orcamento/novo', to: 'budgets#new', as: :new_budget
  resources :budgets
  get 'galeria', to: 'galleries#index', as: :galleries
  resources :galleries
  get 'sucesso', to: 'successes#index', as: :successes
  #resources :successes, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

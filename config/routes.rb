Rails.application.routes.draw do
  resources :alt_questions
  resources :dev_questions
  resources :temas
  
  devise_for :users
  resources :users
  #get 'users/:id', to: 'users#index', as: 'user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get 'tarea_alt', to: 'tarea_alt#index'
  post 'next_alt', to: 'tarea_alt#next_question'
  get 'tarea_dev', to: 'tarea_dev#index'

  get 'incrementar_tema', to: 'users#next_tema'
end

Rails.application.routes.draw do

  resources :administradors
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  resources :items
  resources :estoques
  resources :fornecedors
  resources :contratos

  root 'sessions#new'

end

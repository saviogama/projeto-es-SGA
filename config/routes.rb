Rails.application.routes.draw do

  resources :administradors
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  resources :estoques do
    resources :items
  end
  resources :fornecedors do
    resources :contratos
  end

  root 'sessions#new'

end

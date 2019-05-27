Rails.application.routes.draw do
  resources :escolas
  resources :distribuicaos
  resources :cardapios
  resources :refeicaos
  resources :items
  resources :estoques
  resources :fornecedors
  resources :contratos
  resources :administradors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

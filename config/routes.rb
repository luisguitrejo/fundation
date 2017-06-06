Rails.application.routes.draw do
  resources :adquisicions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'adquisicions#index'
end

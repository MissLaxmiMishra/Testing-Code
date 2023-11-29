Rails.application.routes.draw do
  root 'companies#new'
  resources :companies, only: [:new, :create]
  post 'send_emails', to: 'companies#send_emails'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

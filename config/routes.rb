Rails.application.routes.draw do
  get 'upload/index'
  get 'upload/index'
  
  post 'upload/show'
  post 'upload/encode'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "upload#index"
end

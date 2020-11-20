Rails.application.routes.draw do
  get '/contestants', to: 'contestants#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

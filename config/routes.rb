Rails.application.routes.draw do
  root 'home#index'
  post '/counting', to: 'home#counting'
end

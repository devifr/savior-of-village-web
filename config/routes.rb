Rails.application.routes.draw do
  root 'home#index'
  post '/counting', to: 'home#counting'
  get '/counting', to: redirect('/')
end

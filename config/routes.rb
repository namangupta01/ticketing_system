Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/'	=>	'home#index'

  get '/query/new'
  post '/query/create'
end

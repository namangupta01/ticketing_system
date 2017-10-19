Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/'	=>	'home#index'
  get '/employee/index'
  get '/query/new'
  post '/query/create'
  get '/query/show'
  get 'employee/query'
  get '/home/role_selector'
  get 'admin/index'
  get 'admin/show'
  get '/guest/mark_unresolved'
end

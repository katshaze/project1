Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  resources :users, :except => [:index]
  resources :books, shallow: true do
    resources :readings
  end
  resources :readings 
  get '/login' => 'session#new' # Log in form. The session controller is singular coz there's only ever one at a time.
  post '/login' => 'session#create' # Log in action
  delete '/login' => 'session#destroy' # Log out
end

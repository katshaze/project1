Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  resources :users
  get '/books/search' => 'books#search'
  post '/books/search' => 'books#import'
  get '/books/result' => 'books#result'
  post '/books/result' => 'books#import_track'
  resources :books do
    resources :readings, :except => [:show]
  end
  get '/login' => 'session#new' # Log in form. The session controller is singular coz there's only ever one at a time.
  post '/login' => 'session#create' # Log in action
  delete '/login' => 'session#destroy' # Log out


end

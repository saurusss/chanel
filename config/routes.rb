Rails.application.routes.draw do
  resources :examples
  resources :dtypes
  resources :itassets
  #resources :assetlists
  resources :stores
  get 'searches/result'
  devise_for :users
  resources :dslists
  resources :contacts
  resources :posts
  get '/' => 'home#index'
  get '/about' => 'home#about'
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' => 'comments#update'
  #get '/stores/search '=> 'stores#search'
  post '/stores/search'=> 'stores#search'
  get  '/itassets/search/:store_id' => 'itassets#search'
  get  '/itassets/newss/:store_id' => 'itassets#newss'
  get  '/itassets/index/:orderkey'  => 'itassets#index'
  get  '/itassets/search/:store_id/:orderkey' => 'itassets#search'
  #get  '/itassets/itapsall' => 'itassets#itapsall'
  get  '/itassets/itaps/:store_id' => 'itassets#itaps'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

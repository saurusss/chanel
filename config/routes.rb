Rails.application.routes.draw do

  resources :isps
  resources :itaqntesmts
 # get    '/' => 'home#index'
  get    '/' => 'home#index_chanel'
  get    '/about' => 'home#about'

  post   '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post   '/posts/:post_id/comments/:id' => 'comments#update'

  #get '/stores/search '=> 'stores#search'
  post   '/stores/search'=> 'stores#search'
  get    '/stores/itaallstore', to: 'stores#itaallstore'

  #get    '/itassets/search/:store_id' => 'itassets#search' # 19-12-11
  get    '/itassets/index/:store_id' => 'itassets#index'    # 19-12-11
  #get    '/itassets/newss/:store_id' => 'itassets#newss'  # 19-12-11
  get    '/itassets/new/:store_id' => 'itassets#new'
  get    '/itassets/index/:orderkey'  => 'itassets#index'
  #get    '/itassets/search/:store_id/:orderkey' => 'itassets#search' #19-12-11
  get    '/itassets/index/:store_id/:orderkey' => 'itassets#index'  #19-12-11
  #get    '/itassets/itapsall' => 'itassets#itapsall'
  get    '/itassets/itaps/:store_id' => 'itassets#itaps'

  post    '/itaqntesmts/index'             => 'itaqntesmts#index'
  get     '/itaqntesmts/:storename/index'  => 'itaqntesmts#index'
  get     '/itaqntesmts/:store_id/new'     => 'itaqntesmts#new'
  get     '/itaqntesmts/:store_id/:dtype_id/new'     => 'itaqntesmts#new'
  #get    '/itaqntesmts/edit/:store_id/:dtype_id'     => 'itaqntesmts#edit'
  
  get    'searches/result' 
  resources :examples
  resources :dtypes
  resources :itassets
  #resources :assetlists
  resources :stores
  devise_for :users
  resources :dslists
  resources :contacts
  resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

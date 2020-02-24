Rails.application.routes.draw do
	devise_for :users
  resources :users,only: [:show,:edit,:update,:index]
  resources :books
  root 'home#top'
  get 'home/about'

  get '/search', to: 'search#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # #list all restaurants
  # get '/restaurants', to: 'restaurants#index'

  # # add new restaurant
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant 
  # post 'restaurants', to: 'restaurants#create'

  # # show a restaurant
  # get 'restaurants/:id', to: 'restaurants#show',  as: :reestaurant

  # # add a new review
  # get  'restaurants/:id/reviews/new',  to: ''

resources :restaurants, only: [:index, :new, :show, :create] do
   resources  :reviews,  only: [:new, :create]
 end

end

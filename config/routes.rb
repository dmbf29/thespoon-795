Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      get :top
    end
    member do
      get :chef
    end
  end
  resources :reviews, only: [:destroy]
end



# get '/restaurants/top', to: 'restaurants#top', as: :top_restaurants
# http request -> caught by the routes -> directs to the correct controller action -> load any data the view needs -> renders the view

# collection -> all restaurants
# member -> one restaurant

Rails.application.routes.draw do
  # http_verb '/path', to: 'controller#action', as: :prefix
  # http_verbs -> get / post / patch / delete

  # CRUD
  # Create
  # We need a page for our form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # We need another route to send our form information to
  post '/restaurants', to: 'restaurants#create', as: :restaurants

  # Read
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update
  # We need a page for our form
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # We need another route to send our form information to
  patch '/restaurants/:id', to: 'restaurants#update'

  # Destroy
  delete '/restaurants/:id', to: 'restaurants#destroy'
end


# http request -> caught by the routes -> directs to the correct controller action -> load any data the view needs -> renders the view

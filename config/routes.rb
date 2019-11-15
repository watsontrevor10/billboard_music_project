Rails.application.routes.draw do
  root "artists#index"
  get '/top_25', to: 'static_pages#top_25'

  resources :artists do
    resources :songs 
  end 
end

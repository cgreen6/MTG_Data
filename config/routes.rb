Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    resources :cards do
      resources :notes
    end

    # get '/randomplant', to: 'plants#randomplants'
    # resources :notes do 
    #   resources :wishlist
    # end
    # resources :plants do
    #   resources :pestdiseases
    # end
    # resources :plants do
    #   resources :propogations
    # end
    resources :users, only: :update

    get '/:id/wishlistCards', to: 'wishlists#wishlistCards'
    get '/:id/cardWishlist', to: 'cards#cardWishlists'
    
  end 
end

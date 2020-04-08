Rails.application.routes.draw do
  # get 'posts/new'

  # get 'po
resources :bloggers, only: [:new, :create, :show]
resources :posts, only: [:show, :new, :create, :edit, :update]
resources :destinations, only: :show 

  # get 'posts/show'

  # get 'destinations/show'

  # get 'bloggers/new'

  # get 'bloggers/show'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # get 'posts/new'

  # get 'po
resources :bloggers, only: [:new, :create, :show]
resources :posts, only: [:show, :new, :create, :edit, :update]
resources :destinations, only: :show 
# new custom route below: 
resources :posts do
  patch :likes, on: :member
  # creates likes_post_path 
  # witout on: :member you can only find it's posts_id like: 
  # params[:post_id] and your route changes too 
  # https://guides.rubyonrails.org/routing.html#customizing-resourceful-routes
  # use on: :member to .find(params[:id]) ## added to before_action
end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

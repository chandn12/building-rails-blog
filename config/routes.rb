Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  # Rails has a shorthand version for this code:
  #get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  #get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  #patch "/blog_posts/:id", to: "blog_posts#update"
  #delete "/blog_posts/:id", to: "blog_posts#destroy"
  #get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  #post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  resources :blog_posts

  # Defines the root path route ("/")
  root "blog_posts#index"
end



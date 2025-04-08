Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  #blog_post_path(1) -> "/blog_posts/1"
  #blog_post_url(1) -> "http://localhost:3000/blog_posts/1"

  # Defines the root path route ("/")
  root "blog_posts#index"
end

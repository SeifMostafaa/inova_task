Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope :users do
    scope ":user_id" do    
      resources :posts
    end
  end

  get "/top_posts", to: "posts#top_posts"
end

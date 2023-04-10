Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope :users do
    scope ":user_id" do    
      get "/posts", to: "posts#index"
    end
  end

  resources :posts
  resources :reviews
end

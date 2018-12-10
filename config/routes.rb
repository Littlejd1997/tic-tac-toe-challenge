Rails.application.routes.draw do
  resources :games do
    # post "update", on: :member
  end
  post "/games/:id" => "games#update"
  root "games#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

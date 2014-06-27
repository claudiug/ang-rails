Rails.application.routes.draw do
  resources :screencasts

  scope :api do
    get '/screencasts' => 'screencasts#index'
    get '/screencasts/:id' => 'screencasts#show'
  end

  root to: "home#index"
end

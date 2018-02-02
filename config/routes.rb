Rails.application.routes.draw do
  post '/submit', to: 'submit#create'
  root to: "home#index"
end

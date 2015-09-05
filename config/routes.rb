Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :links, path: "recommended" do
    resource :vote
  end

  root to: "links#index"
end

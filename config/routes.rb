Rails.application.routes.draw do
  devise_for :users
  resources :details
  resources :plans
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "plans/new" => "plans#new"
  get "plans/show" => "plans#show"
  get "plans/edit" => "plans#edit"
  get "details/new" => "details#new"
  get "details/show" => "details#show"
  get "details/edit" => "details#edit"
end

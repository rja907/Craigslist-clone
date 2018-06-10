Rails.application.routes.draw do
  root 'categories#index'
  match '/help', to:'pages#help', via: :get
end

Rails.application.routes.draw do
  root 'categories#index'
  match '/help', to:'pages#help', via: :get
  match '/scams', to:'pages#scams', via: :get
  match '/safety', to:'pages#safety', via: :get
  match '/terms', to:'pages#terms', via: :get
end

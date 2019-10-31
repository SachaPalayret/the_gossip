Rails.application.routes.draw do
resources :welcome
resources :cities
resources :gossips
resources :user
  get 'static_views/home'
  get 'static_views/team'
  get 'static_views/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

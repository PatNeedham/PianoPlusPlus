Rails.application.routes.draw do
  get 'tutoring_requests/request'

  get 'tutoring_requests/accept'

  devise_for :users
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/home'

  get 'dashboard' => "static_pages#dashboard"

  get 'create_request' => "tutoring_requests#new"
  post 'create_request' => "tutoring_requests#create"

  resources :users # can leave this here if you will interact with users, somehow

  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'

  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'

end

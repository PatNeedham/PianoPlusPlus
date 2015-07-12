Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/home'

  resources :users # can leave this here if you will interact with users, somehow

  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'

  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'

end

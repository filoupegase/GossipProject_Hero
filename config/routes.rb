Rails.application.routes.draw do
  get 'static_pages/team'
  get 'static_pages/contact'
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/static_pages/contact', to: 'controller#method'
end

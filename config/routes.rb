Rails.application.routes.draw do

  #get 'user/show'
  get 'user/:id', to: 'user#show' , as: 'users'
  #get 'gossip/show'
  #get 'welcome/show'
  get 'gossip/:id', to: 'gossip#show' , as: 'gossips'
  get 'static_pages/team'
  get 'welcome/:user_entry', to: 'welcome#show'
  get 'static_pages/team'
  get 'static_pages/contact'
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/static_pages/contact', to: 'controller#method'
end

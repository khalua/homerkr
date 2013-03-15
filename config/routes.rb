Homerkr::Application.routes.draw do
  root :to => 'welcome#index'
  resources :students, :only => [:new, :index, :create]
end

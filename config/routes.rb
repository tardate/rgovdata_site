RgovdataSite::Application.routes.draw do
  resource :dashboard, :only => [:show]
  root :to => "dashboards#show"
  resources :docs, :guides

  resources :realms, :only => [:index,:show]
  resources :services, :only => [:show]
  resources :datasets, :only => [:show]
end

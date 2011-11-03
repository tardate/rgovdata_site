RgovdataSite::Application.routes.draw do
  resource :dashboard, :only => [:show]
  root :to => "dashboards#show"

  resources :realms, :only => [:index,:show]
  resources :services, :only => [:index,:show]
end

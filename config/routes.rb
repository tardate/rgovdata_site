RgovdataSite::Application.routes.draw do
  resource :dashboard, :only => [:show]
  root :to => "dashboards#show"
  resources :docs, :guides, :only => [:index]

  resources :realms, :only => [:index,:show]
  resources :services, :only => [:show]
  resources :datasets, :only => [:show] do
    get :table, :on => :member
  end
  resources :examples, :only => [:index] do
    collection do
      get :harparray
      get :nlb
    end
  end
end

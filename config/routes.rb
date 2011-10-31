RgovdataSite::Application.routes.draw do
  resource :dashboard, :only => [:show]
  root :to => "dashboards#show"
end

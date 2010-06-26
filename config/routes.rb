ActionController::Routing::Routes.draw do |map|

  map.resources :source_commits, :only => [:show, :index]

  map.namespace :admin do |admin|
    admin.resources :feeds
    admin.resources :featured_projects
  end
  
  map.resources :feeds
  map.resources :featured_projects, :only => [:index, :show]
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.signup "signup", :controller => "users", :action => "new"
  map.home "home", :controller => "home", :action => "index"
  map.members "members", :controller => "users", :action => "index"

  map.resources :user_sessions
  map.resources :users

  map.root :home

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

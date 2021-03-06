Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "life_measures#index"
  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Life_measure resource:
  # CREATE
  get "/life_measures/new", :controller => "life_measures", :action => "new"
  post "/create_life_measure", :controller => "life_measures", :action => "create"

  # READ
  get "/life_measures", :controller => "life_measures", :action => "index"
  get "/life_measures/:id", :controller => "life_measures", :action => "show"

  # UPDATE
  get "/life_measures/:id/edit", :controller => "life_measures", :action => "edit"
  post "/update_life_measure/:id", :controller => "life_measures", :action => "update"

  # DELETE
  get "/delete_life_measure/:id", :controller => "life_measures", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

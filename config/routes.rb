Rails.application.routes.draw do
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

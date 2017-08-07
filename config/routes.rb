Rails.application.routes.draw do
  # Routes for the Tab resource:
  # CREATE
  get "/tabs/new", :controller => "tabs", :action => "new"
  post "/create_tab", :controller => "tabs", :action => "create"

  # READ
  get "/tabs", :controller => "tabs", :action => "index"
  get "/tabs/:id", :controller => "tabs", :action => "show"

  # UPDATE
  get "/tabs/:id/edit", :controller => "tabs", :action => "edit"
  post "/update_tab/:id", :controller => "tabs", :action => "update"

  # DELETE
  get "/delete_tab/:id", :controller => "tabs", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

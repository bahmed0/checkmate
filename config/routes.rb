Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "restaurants#index"
  # Routes for the Line_item resource:
  # CREATE
  get "/line_items/new", :controller => "line_items", :action => "new"
  post "/create_line_item", :controller => "line_items", :action => "create"

  # READ
  get "/line_items", :controller => "line_items", :action => "index"
  get "/line_items/:id", :controller => "line_items", :action => "show"

  # UPDATE
  get "/line_items/:id/edit", :controller => "line_items", :action => "edit"
  post "/update_line_item/:id", :controller => "line_items", :action => "update"

  # DELETE
  get "/delete_line_item/:id", :controller => "line_items", :action => "destroy"
  #------------------------------

  # Routes for the Menu_item resource:
  # CREATE
  get "/menu_items/new", :controller => "menu_items", :action => "new"
  post "/create_menu_item", :controller => "menu_items", :action => "create"

  # READ
  get "/menu_items", :controller => "menu_items", :action => "index"
  get "/menu_items/:id", :controller => "menu_items", :action => "show"

  # UPDATE
  get "/menu_items/:id/edit", :controller => "menu_items", :action => "edit"
  post "/update_menu_item/:id", :controller => "menu_items", :action => "update"

  # DELETE
  get "/delete_menu_item/:id", :controller => "menu_items", :action => "destroy"
  #------------------------------

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

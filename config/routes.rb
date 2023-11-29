Rails.application.routes.draw do
  # Routes for the Material used resource:

  # CREATE
  post("/insert_material_used", { :controller => "material_useds", :action => "create" })
          
  # READ
  get("/material_useds", { :controller => "material_useds", :action => "index" })
  
  get("/material_useds/:path_id", { :controller => "material_useds", :action => "show" })
  
  # UPDATE
  
  post("/modify_material_used/:path_id", { :controller => "material_useds", :action => "update" })
  
  # DELETE
  get("/delete_material_used/:path_id", { :controller => "material_useds", :action => "destroy" })

  #------------------------------

  # Routes for the Material resource:

  # CREATE
  post("/insert_material", { :controller => "materials", :action => "create" })
          
  # READ
  get("/materials", { :controller => "materials", :action => "index" })
  
  get("/materials/:path_id", { :controller => "materials", :action => "show" })
  
  # UPDATE
  
  post("/modify_material/:path_id", { :controller => "materials", :action => "update" })
  
  # DELETE
  get("/delete_material/:path_id", { :controller => "materials", :action => "destroy" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  post("/insert_like", { :controller => "likes", :action => "create" })
          
  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  
  get("/likes/:path_id", { :controller => "likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
  
  # DELETE
  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  #------------------------------

  # Routes for the Idea resource:

  # CREATE
  post("/insert_idea", { :controller => "ideas", :action => "create" })
          
  # READ
  get("/ideas", { :controller => "ideas", :action => "index" })
  
  get("/ideas/:path_id", { :controller => "ideas", :action => "show" })
  
  # UPDATE
  
  post("/modify_idea/:path_id", { :controller => "ideas", :action => "update" })
  
  # DELETE
  get("/delete_idea/:path_id", { :controller => "ideas", :action => "destroy" })

  #------------------------------

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

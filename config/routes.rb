Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/insert_user_record", { :controller => "users", :action => "create" })
  post("/update_user/:user_id", { :controller => "users", :action => "update" })

  get("/venues", { :controller => "venues", :action => "index" })
  get("/venues/:venue_id", { :controller => "venues", :action => "show" })
  get("/delete_venue/:venue_id", { :controller => "venues", :action => "destroy" })
  post("/insert_venue_record", { :controller => "venues", :action => "create" })
  post("/update_venue/:venue_id", { :controller => "venues", :action => "update" })
  
  post("/insert_comment_record", { :controller => "comments", :action => "create" })
end

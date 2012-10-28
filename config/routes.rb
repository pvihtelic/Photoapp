Photoapp::Application.routes.draw do
  get "/pictures", :controller=>"Pictures", :action=>"index", :as=>"pictures"

  get "/pictures/new", :controller=>"Pictures", :action=>"new", :as=>"new_picture"
  post "/pictures", :controller=>"Pictures", :action=>"create"

  get "/pictures/:id", :controller=>"Pictures", :action=>"show", :as=>"picture"
 
  delete "/pictures/:id", :controller=>"Pictures", :action=>"destroy"

  get "/pictures/edit/:id", :controller=>"Pictures", :action=>"edit", :as=>"edit_picture"
  put "/pictures/:id", :controller=>"Pictures", :action=>"update"
end

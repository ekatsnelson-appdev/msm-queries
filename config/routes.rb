Rails.application.routes.draw do

  get("/directors/youngest", { :controller => "directors", :action => "smallest"})

  get("/directors/eldest", { :controller => "directors", :action => "wisest"})

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

end

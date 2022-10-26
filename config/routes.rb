Rails.application.routes.draw do

  get("/directors/eldest", { :controller => "directors", :action => "wisest"})

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

end

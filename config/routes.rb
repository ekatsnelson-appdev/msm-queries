Rails.application.routes.draw do

  get("/directors/youngest", { :controller => "directors", :action => "smallest"})

  get("/directors/eldest", { :controller => "directors", :action => "wisest"})

  get("/", { :controller => "application", :action => "homepage"})

  get("/movies", { :controller => "movies", :action => "all_movies" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

  get("/movies/:an_id", { :controller => "movies", :action => "movie_details"})

  get("/actors", { :controller => "actors", :action => "all_actors"})

  get("/actors/:an_id", { :controller => "actors", :action => "actor_details"})

end

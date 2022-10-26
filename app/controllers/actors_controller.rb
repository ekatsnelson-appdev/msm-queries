class ActorsController < ApplicationController

  def all_actors
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/all_actors.html.erb" })
  end

  def movie_details

    the_id = params.fetch("an_id")

    @the_movie = Movie.where({ :id => the_id }).at(0)
    #@the_director = Director.where({ :movie_id => @the_movie.id})

    render({ :template => "movie_templates/show_details.html.erb" })
  end


end

class ActorsController < ApplicationController

  def all_actors
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/all_actors.html.erb" })
  end

  def actor_details

    the_id = params.fetch("an_id")

    @the_actor = Actor.where({ :id => the_id }).at(0)

    @chars = Character.where({ :actor_id => @the_actor.id})

    #@the_director = Director.where({ :movie_id => @the_movie.id})

    render({ :template => "actor_templates/actor_details.html.erb" })
  end


end

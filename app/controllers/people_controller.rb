class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    @moviescast = @person.movie_casts.all
  end
end

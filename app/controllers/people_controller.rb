class PeopleController < ApplicationController
  before_action :authenticate_user!

  def create
    @person = Person.new
    @person.name = params[:name]
    @person.tmdb_people_id = params[:tmdb_people_id]
    @person.gender = params[:gender]
    @person.biography = params[:biography]
    @person.birthday = params[:birthday]
    @person.deathday = params[:deathday]
    @person.place_of_birth = params[:place_of_birth]
    @person.profile_path_url = params[:profile_path_url]
    @person.save!
  end

  def show
    @person = Person.find(params[:id])
    @moviescast = @person.movies_as_cast.all
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # PATCH/PUT /people/1
  def update
    @person = Person.find(params[:id])
    if @person.update(movie_params)
      redirect_to @person, notice: 'Person was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /people/1
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_url, notice: 'Person was successfully destroyed.'
  end
end

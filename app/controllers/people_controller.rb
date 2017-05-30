class PeopleController < ApplicationController
  before_action :authenticate_user!

  # GET /people
  def index
    if params[:search]
      @people = Person.search(params[:search]).page(params[:page]).per(20).order('name')
    elsif params[:sort] == 'name'
      @people = Person.page(params[:page]).per(20).order('name')
    elsif params[:sort] == 'created_at'
      @people = Person.page(params[:page]).per(20).order('created_at DESC')
    else
      @people = Person.page(params[:page]).per(20).order('name')
    end
  end

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
    @moviescast = @person.movies_as_cast.all + @person.movies_as_crew.all
    @moviescast.uniq!
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # PATCH/PUT /people/1
  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
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

  private

  # Only allow a trusted parameter "white list" through.
  def person_params
    params.require(:person).permit(:name, :tmdb_people_id, :biography, :birthday, :deathday, :place_of_birth, :profile_path_url, :gender)
  end
end

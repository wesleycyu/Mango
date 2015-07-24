class MoviesController < ApplicationController

  def index
    @movies = Movie.all.page(params[:page]).per(5)
  end

  def search
    @movies = Movie.search(params[:title]).page(params[:page]).per(5)
    case params[:length]
    when "90"
      @movies = @movies.runtime_less_than(90)
    when "120"
      @movies = @movies.runtime_less_than(120).runtime_greater_than(90)
    when "121"
      @movies = @movies.runtime_greater_than(120)
    end
    @movies
  end

  def landing
    render :landing
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id].to_i)
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path, notice: "#{@movie.title} was submitted successfully!"
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id].to_i)
  end

  def update
    @movie = Movie.find(params[:id].to_i)

    if @movie.update_attributes(movie_params)
      redirect_to movies_path, notice: "#{@movie.title} was updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id].to_i)
    @title = @movie.title
    @movie.destroy
    redirect_to movies_path, notice: "#{@title} was deleted."
  end

  protected

  def movie_params
    params.require(:movie).permit(:title, :director, :runtime_in_minutes, :description, :poster_image_url, :remote_poster_image_url, :release_date)
  end

end
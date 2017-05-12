class MoviesController < ApplicationController

  def index
    movies = Movie.all
    render :json => movies.as_json(only: [:title, :release_date]), status: :ok
  end

  def show
    movie = Movie.find_by(title: params[:title])
    if movie
      render :json => movie, status: :ok
    else
      render :json => movie, status: :no_content
    end
  end

end

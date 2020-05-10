class Admins::MoviesController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@movie =Movie.new(movie_params)
  	@movies =Movie.all
  end

  def create
  end

  def edit
  	@movie =Movie.find(params[:id])
  end

  def update
  	@movie =Movie.find(params[:id])
  end

  private
  def movie_params
    params.permit(:title, :column, :year, :theme_title, :image)
  end
end

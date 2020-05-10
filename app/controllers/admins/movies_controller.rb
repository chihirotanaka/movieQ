class Admins::MoviesController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@movie =Movie.new
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
end

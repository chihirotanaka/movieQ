class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
  	@quizzes = current_user.quizzes.all
  end

  def edit
  end

  def update
  end
end

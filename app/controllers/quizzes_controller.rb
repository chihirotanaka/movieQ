class QuizzesController < ApplicationController
  before_action :authenticate_user!

# サイトtopページ(aboutを兼務)
  def index
  end

# クイズ制作ページ
  def new
    @newquiz = Quiz.new
    @movies = Movie.all
    # ここはサンプルとして追記 参考にしてください
    @ThemeTitles = Movie.theme_titles
    # ここまで

  end

  def create
    @newquiz = Quiz.new(post_quiz_params)
    @newquiz.user.id == current_user.id
    if @newquizze.save
    redirect_to user_home_path
    else
    render 'back'
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
    @quizzes = movie.quizzes.all
  end

  def update
    @quiz = Quiz.find(params[:id])
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to user_home_path
  end

# クイズ画面
  def quiz
  end

  def result
  end

  def total
  end

  private
  def post_quiz_params
    params.require(:quiz).permit(:user_id, :movie_id, :movie_title,
     :question, :emoji, :answer, :answer2, :answer3)
  end
end

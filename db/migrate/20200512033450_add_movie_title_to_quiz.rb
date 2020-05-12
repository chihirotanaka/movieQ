class AddMovieTitleToQuiz < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :movie_title, :string
  end
end

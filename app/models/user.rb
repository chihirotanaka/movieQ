class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_paranoid without_default_scope: true
  has_many :quizzes, dependent: :destroy

  with_options presence: true do
  validates :name
  validates :email
  end

end

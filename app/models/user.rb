class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :omniauthable

  acts_as_paranoid
  has_many :quizzes, dependent: :destroy


  validates :name, presence: true, length: {maximum: 20, minimum: 2}

 #sns omniauth

    def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        user_id:      auth.user_id,
        provider: auth.provider,
        email:    User.dummy_email(auth),
        password: Devise.friendly_token[0, 20],
        image: auth.info.image,
        name: auth.info.name,
        nickname: auth.info.nickname,
        location: auth.info.location
      )
    end

    user
  end

  private
	  def self.dummy_email(auth)
	    "#{auth.user_id}-#{auth.provider}@example.com"
	  end
	end



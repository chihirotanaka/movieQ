class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,omniauth_providers: [:facebook, :twitter, :google_oauth2]
  acts_as_paranoid
  has_many :quizzes, dependent: :destroy


  validates :name, presence: true, length: {maximum: 20, minimum: 2}

 #sns omniauth

  def self.from_omniauth(auth)
    p auth
    user = where(provider: auth.provider, uid: auth.uid).first
    if user.nil?
      user = User.new
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image = auth.info.image.gsub("_normal","") if user.provider == "twitter"
      user.image = auth.info.image.gsub("picture","picture?type=large") if user.provider == "facebook"
      user.image = auth.info.image if user.provider == "google_oauth2"
      user.save
      user.errors.full_messages.each do |msg|
        p msg
      end
      #user.image = auth.info.image.gsub("picture","picture?type=large") if user.provider == "google_oauth2"
    end
    user
  end
end

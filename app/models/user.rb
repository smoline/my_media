class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_movies, through: :favorites, class_name: "Movie", source: :movie

  has_many :owners, dependent: :destroy
  has_many :owned_movies, through: :owners, class_name: "Movie", source: :movie

  has_many :game_favorites, dependent: :destroy
  has_many :games, through: :game_favorites

  has_many :tv_favorites, dependent: :destroy
  has_many :tv_shows, through: :tv_favorites

  has_many :tv_owners, dependent: :destroy
  has_many :tv_episodes, through: :tv_owners
  has_many :tv_seasons, through: :tv_episodes
  has_many :tv_shows, through: :tv_seasons

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    user = User.find_by('email = ?', auth['info']['email'])
    if user.blank?
      user = User.new(
        {
          provider: auth.provider,
          uid: auth.uid,
          email: auth.info.email,
          password: Devise.friendly_token[0,20]
        })
      user.save!
      NotificationMailer.welcome_email(user).deliver_later
    end
    user
  end
end

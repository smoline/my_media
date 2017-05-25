class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :movies, through: :favorites

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    user = User.find_by('email = ?', auth['info']['email'])
    NotificationMailer.welcome_email(user).deliver_later
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

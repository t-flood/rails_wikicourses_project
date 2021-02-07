class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

  def self.from_email!(email)
    find_or_create_by(email: email) do |user|
      user.password = Devise.friendly_token[0, 20]
    end
  end
end

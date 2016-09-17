class User < ApplicationRecord
  has_many :user_providers
  has_many :videos
  has_many :video_comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :update_access_token!

  class << self
    def from_omniauth(provider_name:, uid:, access_token:)
      user_provider = UserProvider.find_or_create_by(name: provider_name, uid: uid) do |provider|
        provider.user         = User.new(password: Devise.friendly_token[0,20])
        provider.access_token = access_token
      end
      user_provider.user
    end
  end

  def email_required?
    false
  end

  def update_access_token!
    update!(access_token: "#{self.id}:#{Devise.friendly_token}")
  end
end

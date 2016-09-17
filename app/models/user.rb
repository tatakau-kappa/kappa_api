class User < ApplicationRecord
  has_many :user_providers
  has_many :videos
  has_many :video_comments
  has_many :user_mobile_devices

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :update_access_token!

  default_value_for(:password) { Devise.friendly_token[0, 20] }

  class << self
    def from_omniauth(provider_name:, uid:, access_token:)
      user_provider = UserProvider.find_or_initialize_by(provider_name: provider_name, uid: uid) do |provider|
        client = ExternalProvider::Client.new(access_token, provider_name)
        provider.user = User.new(
          image_url: client.image_url,
          screen_name: client.name
        )
      end
      user_provider.update!(access_token: access_token)
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

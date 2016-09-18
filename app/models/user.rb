class User < ApplicationRecord
  has_many :user_providers
  has_many :videos
  has_many :video_comments
  has_many :user_mobile_devices
  has_one :docomo_token

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

  def current_point
    docomo_point.current_point.body.to_obj['point'].to_i
  end

  def email_required?
    false
  end

  def update_access_token!
    DocomoToken.paying_out(self.id)
    update!(access_token: "#{self.id}:#{Devise.friendly_token}")
  end

  def docomo_point
    @_docomo_point_client ||= DocomoPoint::Client.new(docomo_token.token)
  end
end

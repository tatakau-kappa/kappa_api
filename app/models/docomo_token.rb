class DocomoToken < ApplicationRecord
  class << self
    def paying_out(user_id)
      docomo_token = find_by(user_id: user_id)
      if docomo_token.blank?
        docomo_token = where(user_id: nil).order(id: :asc).first
        docomo_token.update!(user_id: user_id)
      end
      docomo_token
    end
  end
end

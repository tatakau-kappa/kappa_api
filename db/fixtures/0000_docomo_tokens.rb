DocomoToken.seed do |s|
  s.id    = 1
  s.token = '7uM8uxAoXhrvSQ7rDJ3yAya_FhDP2xcZSI_5gITyKwk'
end

DocomoToken.seed do |s|
  s.id    = 2
  s.token = 'W58bVUiXVJyX6_u0YZpWJtsKgufe40i05IxqzGUPWmI'
end

DocomoToken.seed do |s|
  s.id    = 3
  s.token = '21a2Y8g0s1X2GiY6EryunP-acXjaHImCFF5a08vKkzE'
end

DocomoToken.seed do |s|
  s.id    = 4
  s.token = '5P33gPhfkrvqa41hpOiCh2k0ZeaTc-XgxB3RuaXRK_E'
end

DocomoToken.seed do |s|
  s.id    = 5
  s.token = 'nltgYVSm0-LjzO100WEgM60hl9OVRzvnIN0z9xGr89E'
end

if Rails.env.test?
  (6..100).each do |id|
    ApplicationRecord.transaction do
      DocomoToken.create!(id: id, token: Devise.friendly_token[0, 20])
    end
  end
end

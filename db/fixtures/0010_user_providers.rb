UserProvider.seed do |s|
  s.id            = 1
  s.user          = User.find(1)
  s.provider_name = 'facebook'
  s.uid           = '1142592839141837'
  s.access_token  = Devise.friendly_token[0, 20]
end

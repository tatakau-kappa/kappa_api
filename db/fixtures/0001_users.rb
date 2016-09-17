User.seed do |s|
  s.id        = 1
  s.name      = 'Yuya Soneoka'
  s.image_url = 'https://graph.facebook.com/1142592839141837/picture?type=large'
end

UserProvider.find_or_create_by!(
  user: User.find(1),
  provider_name: :facebook,
  uid: '1142592839141837',
  access_token:  Devise.friendly_token[0, 20]
)

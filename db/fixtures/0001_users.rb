User.seed do |s|
  s.id          = 1
  s.screen_name = 'Yuya Soneoka'
  s.image_url   = 'https://graph.facebook.com/1142592839141837/picture?type=large'
end

DocomoToken.paying_out(1)

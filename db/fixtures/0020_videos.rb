Video.seed do |s|
  s.user          = User.find(1)
  s.id            = 1
  s.video_uid     = 'test/battlehack-video.mp4'
  s.image_uid     = 'dummy.jpg'
  s.swapped_uid   = 'processed/1/video.mp4'
  s.thumbnail_uid = 'processed/1/sone.jpg'
  s.program_name  = 'バトルハック'
end
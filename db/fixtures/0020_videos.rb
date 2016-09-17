Video.seed do |s|
  s.user          = User.find(1)
  s.id            = 1
  s.video_uid     = 'test/battlehack-video.mp4'
  s.image_uid     = 'dummy.jpg'
  s.swapped_uid   = '/processed/1/video.mp4'
  s.thumbnail_uid = '/processed/1/sone.jpg'
  s.program_name  = 'バトルハック'
end

Video.seed do |s|
  s.user          = User.find(1)
  s.id            = 101
  s.video_uid     = 'test/honda-video.mp4'
  s.image_uid     = 'dummy2.jpg'
  s.swapped_uid   = '/processed/13/video.mp4'
  s.thumbnail_uid = '/processed/13/thumbnail.jpg'
  s.program_name  = '本田圭佑 インタビュー'
end

Video.seed do |s|
  s.user          = User.find(1)
  s.id            = 102
  s.video_uid     = 'test/geesu-video.mp4'
  s.image_uid     = 'dummy3.jpg'
  s.swapped_uid   = '/processed/14/video.mp4'
  s.thumbnail_uid = '/processed/14/thumbnail.jpg'
  s.program_name  = 'ゲスの極み乙女。 私以外私じゃないの'
end

Video.seed do |s|
  s.user          = User.find(1)
  s.id            = 103
  s.video_uid     = 'test/hikakin-video.mp4'
  s.image_uid     = 'dummy4.jpg'
  s.swapped_uid   = '/processed/15/video.mp4'
  s.thumbnail_uid = '/processed/15/thumbnail.jpg'
  s.program_name  = 'ヒカキン ミルクレア紹介'
end

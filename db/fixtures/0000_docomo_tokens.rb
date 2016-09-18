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

DocomoToken.seed do |s|
  s.id    = 6
  s.token = 'TeGZAai4t7N9bbH8voaRl01mBqMR58bpj1ZGr388ZfI'
end

DocomoToken.seed do |s|
  s.id    = 7
  s.token = 'v9NgevS_1GO-rV9c-Zc94tVASsUKuEXuP1XkrRDiVqI'
end

DocomoToken.seed do |s|
  s.id    = 8
  s.token = 'rlvjUmWWmD57i4eGaAsE3nfTPr3KtAdqfJH1AOlz55c'
end

DocomoToken.seed do |s|
  s.id    = 9
  s.token = '3x_JsisA6CYPWsnP72PxaDRHa5UBhX8C-cQ73PKE7pg'
end

DocomoToken.seed do |s|
  s.id    = 10
  s.token = 'Glav3UzPbIUZzbUbIbQ85vxbXI8OUM7Ve9GIpHPYw40'
end

DocomoToken.seed do |s|
  s.id    = 11
  s.token = 'fl7IlM_TS1BRQqtqq7SgnlD1Xx2iP7B-GjB-OSfuLlI'
end

DocomoToken.seed do |s|
  s.id    = 12
  s.token = '-FaS141wfN0zGXonkRoUVW0IGoqhrPeQvR4cPsw45hw'
end

DocomoToken.seed do |s|
  s.id    = 13
  s.token = 'UWx9rmjMKkPAijmLNTlX4-dSZDM6pEswmGB8DMVcaiY'
end

DocomoToken.seed do |s|
  s.id    = 14
  s.token = 'PwH0T-wVoXdbX1T-efpVinm3KhLiOpc8BeotJZZI1Y0'
end

DocomoToken.seed do |s|
  s.id    = 15
  s.token = 'RXSGWz6E-mWrJ9rov2LbhkSnUNd9j0VsYXPqNshqakE'
end

DocomoToken.seed do |s|
  s.id    = 16
  s.token = 'j0T2HTnYOcqbR2Haha0fg_xVpMO9BwUF-NdKMS_Ut9Y'
end

DocomoToken.seed do |s|
  s.id    = 17
  s.token = 'bVx0pdDws8Fxyy5gpIRHj8JME3RcediHt1S25y_6xIc'
end

DocomoToken.seed do |s|
  s.id    = 18
  s.token = 'NcRFeWozqNyFqCsU9EtlO5PBlW5IJcWlLIAdut8kOWQ'
end

DocomoToken.seed do |s|
  s.id    = 19
  s.token = '_HSrY_cQrJcMU4rI3tXLumw96q6PSzaAkPwcB2sAvBw'
end

DocomoToken.seed do |s|
  s.id    = 20
  s.token = 'Sr0DESANSpk9Rc2Dcil3EYuVlHaP-kvTSiOMk9HaQvg'
end

DocomoToken.seed do |s|
  s.id    = 21
  s.token = 'iYBGdfvUiYlYfAn7rhvu28YHgVHbGrdMXVZjYdnX7IQ'
end

DocomoToken.seed do |s|
  s.id    = 22
  s.token = 'It41nez20V22bxKdNd1xMT3cHolEfgA5d9RRqP4Gd3w'
end

DocomoToken.seed do |s|
  s.id    = 23
  s.token = 'PAos2ArynHZq11axx3HXdINhFdb7YNBvVOwe9lggbtU'
end

DocomoToken.seed do |s|
  s.id    = 24
  s.token = 'cOFkEuV20E8VSQOO0WPv9Le_C9d6SP_hFZHbEDc6baY'
end

DocomoToken.seed do |s|
  s.id    = 25
  s.token = 'Ia3sbLJw0sIaoNY-psoSPLLTk8Y9L7NOI6_GkCggo2k'
end

if Rails.env.test?
  (26..100).each do |id|
    ApplicationRecord.transaction do
      DocomoToken.create!(id: id, token: Devise.friendly_token[0, 20])
    end
  end
end

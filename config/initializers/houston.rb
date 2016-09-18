if Rails.env.production?
  apn = Houston::Client.development
  apn.certificate = File.read(ENV['KAPPA_API_APN_CERT_PATH'])

  Settings.apn = apn
end

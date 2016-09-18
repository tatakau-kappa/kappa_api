Sidekiq.configure_server do |config|
  config.redis = { url: "#{Settings.redis.url}/12" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "#{Settings.redis.url}/12" }
end
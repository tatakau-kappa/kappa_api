require 'json'

module EnvForWithJsonSupport
  def env_for(path, env)
    env[:params] = env[:params].to_json if type_json?(env)
    super
  end

  private

  JSON_SUPPORTED_METHODS = %i(post put patch).freeze

  def type_json?(env)
    env[:params] && env['CONTENT_TYPE'] == 'application/json' && JSON_SUPPORTED_METHODS.include?(env[:method])
  end
end

Rack::Test::Session.prepend(EnvForWithJsonSupport)
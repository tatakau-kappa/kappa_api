# Load DSL and set up stages
require 'capistrano/setup'

require 'capistrano/deploy'

require 'capistrano/bundler'
require 'capistrano/puma'
require 'capistrano/rails/migrations'
require 'seed-fu/capistrano3'
require 'capistrano/sidekiq'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
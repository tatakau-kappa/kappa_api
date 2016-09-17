# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'kappa_api'
set :repo_url, 'git@github.com:tatakau-kappa/kappa_api.git'

set :deploy_to, '/root/kappa_api'

set :scm, :git
set :format, :pretty
set :log_level, :info
set :pty, false
set :deploy_via, :remote_cache

set :rails_env, fetch(:stage)

set :linked_files, %w()
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets tmp/puma vendor/bundle public/system)

set :bundle_flags, '--deployment'
set :bundle_without, %w(test).join(' ')
set :bundle_path, -> { nil }

set :keep_releases, 5

set :default_env, RAILS_ENV: fetch(:rails_env)

set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_bind, %w(tcp://0.0.0.0:9292)
set :puma_init_active_record, true
set :puma_state, -> { "#{shared_path}/tmp/puma/state" }
set :puma_pid, -> { "#{shared_path}/tmp/puma/pid" }
set :original_preload_app, fetch(:puma_preload_app)
set :puma_preload_app, -> { fetch(:original_preload_app) || !!ENV['FORCE_RESTART'] }

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:app), in: :sequence do
      within release_path do
        execute :rake, 'tmp:cache:clear'
      end
    end
  end

  before 'deploy:publishing', 'db:seed_fu'

  after :finishing, 'deploy:restart'
end



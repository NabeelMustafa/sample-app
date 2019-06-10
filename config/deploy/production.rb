set :port, 22
set :user, 'deployer'
set :deploy_via, :remote_cache
set :use_sudo, false
set :branch, :master

server '178.62.63.40',
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: fetch(:user),
  primary: true

set :deploy_to, "/home/deployer/teatro-santander-rooftop"

set :rails_env, :production
set :conditionally_migrate, true

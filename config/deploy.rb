# file: config/deploy.rb

lock '3.10.1'


set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.4.1'

#set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :application, 'teatro-santander-rooftop'
set :repo_url, 'git@bitbucket.org:leandro_filellini/teatro-santander-rooftop.git'

ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

set :use_sudo, false
set :bundle_binstubs, nil
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :use_sudo, true

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    invoke 'unicorn:legacy_restart'
    on roles(:app) do
      within current_path do
        with rails_env: fetch(:rails_env, 'production') do
          execute :bundle, 'exec', :rake, 'tmp:cache:clear'
        end
      end
    end
  end
end


default_run_options[:pty] = true
set :application, "agatha"
set :repository,  "agathaapp@fido2.bfriars.ox.ac.uk:/opt/repos/agatha.git"
set :domain, "fido2.bfriars.ox.ac.uk"


set :deploy_to, "/opt/httpd/html/#{application}"


set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :user, "agathaapp"
set :runner, "agathaapp"
set :use_sudo, false
ssh_options[:paranoid] = false

role :app, domain
role :web, domain
role :db,  domain, :primary => true

# moves over server config files after deploying the code
task :update_config, :roles => [:app] do
  run "cp -Rf #{shared_path}/config/* #{release_path}/config/"
end

namespace :passenger do
  desc "Restart Application"
  task :start, :roles => :app do
    # Do nothing.
  end
 task :stop, :roles => :app do
    # Do nothing.
  end


  task :restart do
    run "touch #{release_path}/tmp/restart.txt"
  end
end

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{release_path}/tmp/restart.txt"
  end
end

after 'deploy:update_code', :update_config
after :deploy, "passenger:restart"


role :app, %w(hosting_mmadov@chromium.locum.ru)
role :web, %w(hosting_mmadov@chromium.locum.ru)
role :db, %w(hosting_mmadov@chromium.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production

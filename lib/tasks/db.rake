namespace :db do
  task prepare: :environment do
    system('bundle exec rake db:drop; bundle exec rake db:create')
    system('bundle exec rake db:migrate; bundle exec rake db:test:load')
  end
end
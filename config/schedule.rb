set :cron_log, "/opt/webapps/cron_log.log"
job_type :bundle_exec_rake, "cd :path && RAILS_ENV=:environment bundle exec rake :task :output"

every 1.day, :at => '5:00am' do 
  bundle_exec_rake "db:generate_weather_records"
end

every 1.day, :at => '6:00am' do 
  bundle_exec_rake "db:update_stats db:update_envs_data solr:reindex"
end

every 1.day, :at => '8:00am' do 
  bundle_exec_rake "db:mongoid:create_indexes efcrons:recompute_causations"
end  
  

every 1.day, :at => '4:00pm' do
  runner "Payment.cronjob_deadline_payment"
end

 every 1.minute do
   command "/opt/webapps/current/server_check.sh"
 end
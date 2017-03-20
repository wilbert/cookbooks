# Not incremental per deploy on crontab tasks
execute "crontab -l | sed 's/>/>>/' | crontab - && crontab -r && crontab -l | sed 's/>/>>/' | crontab -" do
  user config[:user]
  group config[:group]
  cwd current_path
  environment config['environment_variables']
end

execute "bundle exec whenever --set 'environment=#{railsenv}' --update-crontab" do
  user config[:user]
  group config[:group]
  cwd current_path
  environment config['environment_variables']
end

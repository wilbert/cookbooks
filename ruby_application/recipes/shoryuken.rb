execute "bundle exec shoryuken -C config/shoryuken.yml -L log/shoryuken.log --rails" do
  cwd current_path
  environment config['environment_variables']
end

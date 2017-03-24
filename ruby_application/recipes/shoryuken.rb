execute "bundle exec shoryuken --rails -R -C config/shoryuken.yml 2>&1 >> log/shoryuken.log &" do
  cwd current_path
  environment config['environment_variables']
end

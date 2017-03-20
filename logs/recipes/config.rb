template '/tmp/cwlogs.cfg' do
  cookbook 'logs'
  source 'cwlogs.cfg.erb'
  owner 'root'
  group 'root'
  mode 0o644
end

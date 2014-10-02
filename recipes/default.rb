# Cookbook Name:: motd
# Recipe:: default

template "/etc/motd#{'.tail' if %w(debian ubuntu).include? node['platform']}" do
  source 'motd.erb'
  mode 0644
  owner 'root'
  group 'root'
  backup 1
  cookbook node['motd']['cookbook']
end

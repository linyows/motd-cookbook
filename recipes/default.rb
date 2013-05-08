# Cookbook Name:: motd
# Recipe:: default
# Copyright 2013, YOUR_COMPANY_NAME
# All rights reserved - Do Not Redistribute

template "/etc/motd#{'.tail' if %w(debian ubuntu).include? node['platform']}" do
  source "motd.erb"
  mode 0644
  owner "root"
  group "root"
  backup 1
end

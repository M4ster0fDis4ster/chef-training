#
# Cookbook:: myiis
# Recipe:: server
#
# Copyright:: 2025, The Authors, All Rights Reserved.

windows_feature 'IIS-WebServer' do
  action :install
  all true
end

file 'C:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world!</h1>'
end

service 'w3svc' do
  action [:enable, :start]
end
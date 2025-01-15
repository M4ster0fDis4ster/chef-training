#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.

haproxy_install 'package'

haproxy_frontend 'http-in' do
  bind '*:80'
  default_backend 'server_backend'
end

haproxy_backend 'server-backend' do
  server [
    'ip-172-31-7-126.ec2.internal 172.31.7.126:80 maxconn 32',
    'ip-172-31-52-5.ec2.internal 172.31.52.5:80 maxconn 32'
  ]
end

haproxy_service 'haproxy' do
  action [ :enable, :start ]
end
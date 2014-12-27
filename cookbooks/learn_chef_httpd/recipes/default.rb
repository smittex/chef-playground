#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package 'httpd'

service 'httpd' do
    action [:start, :enable]
end

template '/var/www/html/index.html' do
    source 'index.html.erb'
end

service 'iptables' do
    action :stop
end


#
# Cookbook:: lcd_template
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.
#
['net-tools', 'httpd'].each do |pkg|
     package pkg 
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'apache'
  group 'apache'
  variables(
    greeting_scope: 'World',
    greeting: node['greeting'],
    fqdn: node['fqdn']
    )
end


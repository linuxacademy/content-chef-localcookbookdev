#
# Cookbook:: la_good
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.
package 'httpd' do
  action :install
end
service 'httpd' do
  action [:enable, :start]
end
package 'elinks' do
  action :install
end

web_message = 'SUCCESS'

file 'web_message' do
  path '/var/www/html/index.html'
  content "#{web_message}"
end


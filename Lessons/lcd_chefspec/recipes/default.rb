#
# Cookbook:: lcd_chefspec
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.

package 'httpd' do
  action :install
end
service 'httpd' do
  action [:enable, :start]
end



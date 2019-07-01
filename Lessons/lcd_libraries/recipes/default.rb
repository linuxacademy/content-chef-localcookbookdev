#
# Cookbook:: lcd_libraries
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.
lcd_libraries_site 'httpd' do
  homepage '<h1>Welcome to the Training site webpage!</h1>'
end

execute 'systemctl restart httpd' do
  only_if { index_exists? }
end


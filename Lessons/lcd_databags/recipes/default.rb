#
# Cookbook:: lcd_databags
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.
#
admins = data_bag('admins')

admins.each do |login|
  admin = data_bag_item('admins', login)
  group admin['gid']
end


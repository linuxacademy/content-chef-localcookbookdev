#
# Cookbook:: lcd_attributes
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.
node.default['app']['language'] = 'ruby'

package node['app']['language'] do
  action :install
end


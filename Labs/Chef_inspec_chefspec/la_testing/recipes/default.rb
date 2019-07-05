#
# Cookbook:: la_testing
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
['net-tools','httpd'].each do |pkg|
  package pkg do
   action :install
  end
end


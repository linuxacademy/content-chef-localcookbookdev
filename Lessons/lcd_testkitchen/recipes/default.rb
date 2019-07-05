#
# Cookbook:: lcd_testkitchen
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.

['net-tools','httpd'].each do |pkg|
  package pkg do
    action :install
  end
end


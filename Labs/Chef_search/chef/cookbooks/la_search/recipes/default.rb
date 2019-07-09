#
# Cookbook:: la_search
# Recipe:: default
#
# Copyright:: 2019, Student Name, All Rights Reserved.

admins = []

search(:admins, "gid:administrators").each do |admin|

  group admin['gid']
  login = admin["id"]
  admins << login
  home = "/home/#{login}"

  user(login) do
    uid admin['uid']
    gid admin['gid']
    shell admin['shell']
    comment admin['comment']
    home home
    manage_home true
  end
end


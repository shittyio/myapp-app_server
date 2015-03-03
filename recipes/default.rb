#
# Cookbook Name:: myapp-app_server
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'myapp-base'
include_recipe 'myapp-ruby'

myapp = node['myapp']

application myapp['name'] do
  owner 'myapp'

  path File.join(myapp['users']['myapp']['home'], myapp['name'])

  rails do
    database do
      database myapp['db']['name']
      username myapp['db']['username']
      password myapp['db']['password']
    end
  end
end

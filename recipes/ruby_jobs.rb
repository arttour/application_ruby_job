#
# Cookbook Name:: application_ruby_jobs
# Recipe:: ruby_jobs
#
# Copyright (C) 2015 Dave Watts
#
# All rights reserved - Do Not Redistribute
#
node[ruby_jobs].each do |name, param|
  name name
  deploy_to "#{param['dir']}/#{param[ruby_job]['name']}"
  revision  "#{param['revision']}"
  current_dir = "#{param['deploy_to']}/current"
  owner param['owner']
  group param['group']

  if node['ruby_job']['databases']
    database_yml = "#{node['ruby_job']['dir']}/#{node['ruby_jobs']['filename']}"

    # Chef::Log.debug("ruby_job.inspect --> #{ruby_job.inspect}")

    template database_yml do
      source "database.yml.erb"
      owner "root"
      group "root"
      mode "644"
      variables(
        :databases => node['ruby_jobs']['databases'],
        :username => node['ruby_jobs']['users'][node.chef_environment]['username'],
        :password => credentials['ruby_jobs'][node[:ruby_jobs]['users'][node.chef_environment]['username']],
        :rails_env => [node.chef_environment]
      )
    end
  end

end
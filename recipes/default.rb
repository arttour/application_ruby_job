#
# Cookbook Name:: application_ruby_jobs
# Recipe:: default
#
# Copyright (C) 2015 Dave Watts
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ruby_build'
# include_recipe 'application_procfile'


group "www-data" do
	action :create
end

user 'www-data' do
  supports :manage_home => true
  comment 'application user'
  gid 'www-data'
  shell '/bin/bash'
  action :create
end

ruby_build_ruby "2.1.6" do
	action :install
end

application 'example' do
  path "/var/#{name}"
  name  "#{name}"
  owner 'www-data'
  group 'www-data'

  repository 'https://github.com/poise/test_rails.git'

  # bundle_install do
  #   deployment true
  #   without %w{development test}
  # end

  # just_ruby do
  #   bundle_command '/opt/rbenv/shims/bundle'
  # end

end

application 'example2' do
  path "/var/#{name}"
  name 'example'
  owner 'www-data'
  group 'www-data'

  repository 'https://github.com/poise/test_rails.git'
  
  # bundle_install do
  #   deployment true
  #   without %w{development test}
  # end

  # just_ruby do
  #   bundle_command '/opt/rbenv/shims/bundle'
  # end

end
#
# Cookbook Name:: application_ruby_jobs
# Recipe:: default
#
# Copyright (C) 2015 Dave Watts
#
# All rights reserved - Do Not Redistribute
#

# include_recipe 'rbenv::default'
# include_recipe 'rbenv::ruby_build'
# include_recipe 'application_procfile'

# rbenv_ruby '2.1.2' do
#   global true
# end

# rbenv_gem 'bundler' do
#   ruby_version '2.1.2'
# end

# application 'example' do
#   path "/var/#{name}"
#   name  "#{name}"
#   owner 'www-data'
#   group 'www-data'

#   repository 'https://github.com/poise/test_rails.git'

#   # bundle_install do
#   #   deployment true
#   #   without %w{development test}
#   # end

#   # just_ruby do
#   #   bundle_command '/opt/rbenv/shims/bundle'
#   # end

# end

# application 'example2' do
#   path "/var/#{name}"
#   name 'example'
#   owner 'www-data'
#   group 'www-data'

#   repository 'https://github.com/poise/test_rails.git'
  
#   # bundle_install do
#   #   deployment true
#   #   without %w{development test}
#   # end

#   # just_ruby do
#   #   bundle_command '/opt/rbenv/shims/bundle'
#   # end

# end
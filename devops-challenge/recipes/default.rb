#
# Cookbook Name:: devops-challenge
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'java::default'

tomcat_install 'java-chef-test' do
    version '8.0.36'
end

cookbook_file '/opt/tomcat_java-chef-test/webapps/java-chef-test.war' do
    source 'java-chef-test.war'
    action :create
end

tomcat_service 'java-chef-test' do
    action :start
end
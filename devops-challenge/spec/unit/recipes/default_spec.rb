#
# Cookbook Name:: devops-challenge
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'devops-challenge::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner =  ChefSpec::SoloRunner.new(platform: 'centos', version: '7.3.1611')
      runner.converge(described_recipe)
    end

    it 'creates war file' do
      expect(chef_run).to create_cookbook_file('/opt/tomcat_java-chef-test/webapps/java-chef-test.war')
    end

    it 'starts tomcat' do
      expect(chef_run).to start_tomcat_service('java-chef-test')
    end
  end
end

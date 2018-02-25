# # encoding: utf-8

# Inspec test for recipe devops-challenge::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(8080) do
  it { should be_listening }
end

describe http('http://localhost:8080/java-chef-test/chef/ping') do
  its('status') { should eq 200 }
  its('body') { should eq 'Hello Chef deployed war' }
end

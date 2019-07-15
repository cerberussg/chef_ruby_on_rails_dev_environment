# # encoding: utf-8

# Inspec test for recipe ruby_on_rails_dev_environment::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('curl') do
  it { should be_installed }
end

describe command('ruby --version') do
  its(:stdout) { should match(/ruby 2.5.1p57/) }
end

describe command('nodejs --version') do
  its(:stdout) { should match(/v8.10.0/) }
end

describe command('gem --version') do
  its(:stdout) { should match(/3.0.4/) }
end

describe command('bundler --version') do
  its(:stdout) { should match(/Bundler version 2.0.2/) }
end

describe command('rails -v') do
  its(:stdout) { should match(/5.2.3/) }
end
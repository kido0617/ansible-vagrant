require 'spec_helper'

describe user('kido') do
  it { should belong_to_group 'wheel' }
end

describe service('firewalld') do
  it { should be_enabled }
  it { should be_running }
end

describe package('mariadb') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe package('php') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

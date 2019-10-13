# encoding: utf-8

describe package('htop') do
  it { should be_installed }
end

describe package('not-existing-package') do
  it { should_not be_installed }
end

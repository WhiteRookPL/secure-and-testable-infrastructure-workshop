# encoding: utf-8

describe service('ntp') do
  it { should be_enabled }
end

describe service('ntp') do
  it { should be_running }
end

describe timezone do
  it { should be_utc }
end

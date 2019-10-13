# encoding: utf-8

describe timezone do
  it { should be_utc }
end

describe timezone do
  it { should be_timezone("UTC") }
end

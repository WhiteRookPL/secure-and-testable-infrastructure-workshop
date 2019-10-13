describe service('apache2') do
  it { should be_enabled }
end

describe service('apache2') do
  it { should be_running }
end

describe port(80) do
  it { should be_listening }

  its('processes') { should include 'apache2' }
end

describe file('/var/www/html/index.html') do
  it { should be_file }

  it { should be_owned_by "www-data" }
  it { should be_grouped_into "www-data" }

  its('mode') { should cmp '0644' }

  its('content') { should match /Secure and Testable Infrastructure/ }
  its('content') { should match /A&A Days 2019/ }
end

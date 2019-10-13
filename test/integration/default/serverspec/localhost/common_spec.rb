require 'spec_helper'

packages = [
  {:package_name => "apt-utils", :distribution => "ubuntu"},
  {:package_name => "yum-utils", :distribution => "redhat"}
]

packages.each do |package_item|
  describe package(package_item[:package_name]), :if => os[:family] == package_item[:distribution] do
    it { should be_installed }
  end
end

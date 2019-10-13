# encoding: utf-8

packages = [
  "htop",
  "curl",
  "mc",
  "net-tools",
  "lsof",
  "nmap",
  "iotop"
]

packages.each do |package_name|
  describe package(package_name) do
    it { should be_installed }
  end
end

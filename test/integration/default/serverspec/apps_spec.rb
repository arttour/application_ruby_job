require 'serverspec'

set :backend, :exec

puts "os: #{os}"

if %w(debian ubuntu redhat suse fedora).include? os[:family]

  describe file('/var/example') do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'www-data' }
    it { should be_grouped_into 'www-data' }
  end

  describe file('/var/example2') do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'www-data' }
    it { should be_grouped_into 'www-data' }
  end
  

end
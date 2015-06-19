require 'serverspec'

set :backend, :exec

puts "os: #{os}"

if %w(debian ubuntu redhat suse fedora).include? os[:family]

  describe file('/var/gnma_tli') do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

  

end
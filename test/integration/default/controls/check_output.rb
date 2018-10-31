control 'check_pkg' do

  describe package('git') do
    it { should be_installed }
  end

  describe package('unzip') do
    it { should be_installed }
  end

  describe service('redis') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end

end

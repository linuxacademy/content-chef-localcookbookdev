# # encoding: utf-8

# Inspec test for recipe lcd_inspec::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

['net-tools','httpd'].each do |pkg|
  describe package(pkg) do
    it {should be_installed}
  end
end


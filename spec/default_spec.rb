# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'apache2::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs the apache2 package' do
    expect(chef_run).to install_package('apache2')
  end

  it 'installs updated SSL configuration' do
    expect(chef_run).to create_template('/etc/apache2/mods-available/ssl.conf')
  end
end

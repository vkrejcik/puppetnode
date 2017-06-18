require 'spec_helper'
describe 'puppetnode' do
  context 'with default values for all parameters' do
    it { should contain_class('puppetnode') }
  end
end

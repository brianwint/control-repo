require 'spec_helper'
describe 'vs2012' do
  context 'with default values for all parameters' do
    it { should contain_class('vs2012') }
  end
end

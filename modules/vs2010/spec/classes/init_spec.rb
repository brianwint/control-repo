require 'spec_helper'
describe 'vs2010' do
  context 'with default values for all parameters' do
    it { should contain_class('vs2010') }
  end
end

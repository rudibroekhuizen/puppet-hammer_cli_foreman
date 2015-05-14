require 'spec_helper'
describe 'hammer_cli_foreman' do

  context 'with defaults for all parameters' do
    it { should contain_class('hammer_cli_foreman') }
  end
end

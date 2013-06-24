require 'spec_helper'

describe DemoHowto do
  it 'should have a version number' do
    DemoHowto::VERSION.should_not be_nil
  end

  it 'should do something useful' do
    true.should be_true
  end
end

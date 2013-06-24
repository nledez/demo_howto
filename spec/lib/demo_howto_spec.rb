require 'spec_helper'

describe DemoHowto do
  it 'should have a version number' do
    DemoHowto::VERSION.should_not be_nil
  end

  it 'should do something useful' do
    true.should be_true
  end

  it 'Can compute 1+2' do
    test1 = DemoHowto::DemoHowto.new
    test1.add(1, 2).should be 3
  end
end

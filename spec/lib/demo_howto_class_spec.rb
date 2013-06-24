require 'spec_helper'

describe DemoHowtoSimpleClass do
  it 'Can compute 1+2' do
    test1 = DemoHowtoSimpleClass.new
    test1.add(1, 2).should be 3
  end
end

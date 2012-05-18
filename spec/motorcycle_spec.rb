require_relative 'spec_helper'

describe Motorcycle do

  describe 'Motorcycle.wheels' do

    subject { Motorcycle }

    it 'should have two wheels' do
      subject.wheels.should eq(2)
    end
  end
end

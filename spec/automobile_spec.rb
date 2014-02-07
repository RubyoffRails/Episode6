require 'rspec'
require '../models/eagle'

describe Automobile do
    it "records the auto when I build it" do
      auto = Automobile.build
      expect(Automobile.all_autos).to include?(auto)
    end
end

require 'airport'
require 'plane'

describe "airport-challenge" do

  describe Plane do

  end

  describe Airport do
#    subject(:airport) { described_class.new }

    it { is_expected.to respond_to(:land).with(1).argument }

    it "should land at the airport" do
      airplane = Plane.new
      expect(subject.land(airplane)).to eq("The plane has landed.")
    end

    it "should take off" do
      airplane = Plane.new
      subject.land(airplane)
      expect(subject.take_off).to eq("The plane has taken off.")
    end

    it "should not take off if it is not at the airport" do
      expect(subject.take_off).to eq nil
    end

  end

end

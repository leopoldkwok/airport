require 'airport'
require 'plane'
require 'weather'

describe "The grand finale (last spec)" do

	let(:airport) 	{Airport.new}

	plane1 = Plane.new
	plane2 = Plane.new
	plane3 = Plane.new
	plane4 = Plane.new
	plane5 = Plane.new
	plane6 = Plane.new

	planes = [plane1, plane2, plane3, plane4, plane5, plane6]

	it "all planes can take off" do
  		allow(airport).to receive(:stormy?).and_return(false)
 		planes.each do |plane|
		airport.takeoff(plane)
		expect(plane.fly).to be true
	end
end
	it "all planes can land" do
		allow(airport).to receive(:stormy?).and_return(false)
 	  		planes.each do |plane|
			airport.land(plane)
	  		expect(plane.land!).to be false
		end

	end
   
end
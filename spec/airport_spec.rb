require 'airport'
require 'plane'

# A plane currently in the airport can be requested to take off

# No more planes can be added to the airport, if it's full

# It is up to you how many planes can land in the airport and how that is implemented.

# If the airport is full then no planes can land

describe Airport do
	let(:airport) 	{Airport.new}
	let(:plane)		{Plane.new} # I think I need this

	def fill_airport(airport)
 	 20.times {airport.land(Plane.new) }
	end

	context 'taking off and landing' do
		
		it 'a plane can land' do
		#plane = Plane.new
		#airport = Airport.new

		# we expect the airport to have 0 planes
    	expect(airport.plane_count).to eq(0)
    	# let's land a plane into the airport
    	airport.land(plane)    
    	# now we expect the airport to have 1 plane
    	expect(airport.plane_count).to eq(1)
		end

		it 'a plane can take off' do
  		airport.land(plane)
  		airport.takeoff(plane)
  		expect(airport.plane_count).to eq(0)
		end

	end

	context 'traffic control' do
		it 'a plane cannot land if the airport is full' do
		#expect(airport).not_to be_full
		 fill_airport airport
		 expect(lambda {airport.land(plane)}).to raise_error(RuntimeError)
		end

	end

end
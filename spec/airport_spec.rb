require 'airport'
require 'plane'
require 'weather'

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
		allow(airport).to receive(:stormy?).and_return(false)
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
		allow(airport).to receive(:stormy?).and_return(false)	
  		airport.land(plane)
  		allow(airport).to receive(:stormy?).and_return(false)	
  		airport.takeoff(plane)
  		expect(airport.plane_count).to eq(0)
		end

	end

	context 'traffic control' do
		it 'a plane cannot land if the airport is full' do
		#expect(airport).not_to be_full
		allow(airport).to receive(:stormy?).and_return(false)	
		
		 fill_airport airport
		 expect(lambda {airport.land(plane)}).to raise_error(RuntimeError)
		end

	end

	context 'weather conditions' do
      	it 'a plane cannot take off when there is a storm brewing' do
		allow(airport).to receive(:stormy?).and_return(true)
  		expect{airport.takeoff(plane)}.to raise_error(RuntimeError)
      end

      
      
      	it 'a plane cannot land in the middle of a storm' do
       allow(airport).to receive(:stormy?).and_return(true)
       expect{airport.land(plane)}.to raise_error(RuntimeError)
      end

	end
end
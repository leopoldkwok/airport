#when we create a new plane, it should have a "flying status, thus planes can not be created in the airport

#When we land a plane at the airport, the plane in question should have it's status changed to "landed"

#when the plane takes of from the airport, the plane's status should become "flying"

require './lib/plane'

describe Plane do

	let(:plane) {Plane.new}

	it 'has a flying status when created' do
	end

	it 'has a flying status when in the air' do
	end

	it 'can take off' do
	end

	it 'changes its status to flying after taking off' do
	end
end


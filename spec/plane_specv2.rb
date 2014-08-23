#when we create a new plane, it should have a "flying status, thus planes can not be created in the airport

#When we land a plane at the airport, the plane in question should have it's status changed to "landed"

#when the plane takes off from the airport, the plane's status should become "flying"

require './lib/plane'

describe Plane do

	let(:plane) {Plane.new}

	it 'has a flying status when created' do
		expect(plane.flying_status).not_to be_nil 
	end

	it 'has a flying status when flying' do
		expect(plane.flying_status).to_be true
	end



 #   it 'has a flying status when in the air' do
	# plane = Plane.new
	# plane.fly!
	# expect(plane).to_be true
	# end

	#  it 'can take off' do
	# end

	# it 'can land' do
	# end


	# it 'changes its status to flying after taking off' do
	# end

end


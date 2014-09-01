require './lib/weather.rb'

class Airport

	include Weather

#	DEFAULT_CAPACITY = 20
	attr_reader :planes
	def initialize   #(options = {})
		@capacity = 20  #options.fetch(:capacity,DEFAULT_CAPACITY)
		@planes = []
	end

	def plane_count
		 planes.count
	end

	def land(plane)
	 #if capacity is reached, raise an exception
		raise "You cannot take off in a storm!" if stormy?
		raise "Airport is full" if full?
		plane.land!
		planes << plane
	end

	def takeoff(plane)
		raise "You cannot take off in a storm!" if stormy?
		plane.takeoff!
		planes.delete(plane)
	end

	def full?
		plane_count == @capacity 
	end


end

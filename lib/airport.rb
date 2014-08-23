class Airport

#	DEFAULT_CAPACITY = 20

	def initialize   #(options = {})
		@capacity = 20  #options.fetch(:capacity,DEFAULT_CAPACITY)
		@planes = []
	end

	def plane_count
		@planes.count
	end

	def land(plane)
		#if capacity is reached, raise an exception
		raise "Airport is full" if full?
		@planes << plane
	end

	def takeoff(plane)
		@planes.delete(plane)
	end

	def full?
		plane_count == @capacity 
	end


end

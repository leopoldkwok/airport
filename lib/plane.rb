class Plane

	def initialize
		@fly = true
	end

	def fly
		@fly
	end

	def land!
	 	@fly = false
	end

	def takeoff!
		@fly = true
	end
	
end

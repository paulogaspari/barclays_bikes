class Van

attr_reader :num_bikes_repaired, :num_empty_spaces, :num_bikes_to_repair

	def initialize
		@bikes_in_transit = []
		@num_bikes_to_repair = 0
		@num_bikes_repaired = 0
		@num_empty_spaces = 10
	end

	# def transporting_to_repair

	# 	dddd

	# end


	def asked_for_pickup(quantity)
		
		@num_bikes_to_repair += quantity
		@num_empty_spaces -= quantity
	end

	def returning_bike(quantity)
		@num_bikes_to_repair -= quantity
		@num_empty_spaces += quantity
	end




end


# stock - number of bikes being transported
# bikes delivered
# bikes picked up
# 
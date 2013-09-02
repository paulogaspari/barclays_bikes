class BikeStation

	attr_reader :number_of_bikes




	def initialize
		@number_of_bikes = 20
		# @broken = broken
	end


	def verify_spaces
		20
	end

	def sum_of_empty_spaces_and_bikes
		
		number_of_bikes + number_of_empty_spaces
	end

	def number_of_empty_spaces
		20 - @number_of_bikes
	end

	def rent_bike(quantity_taken)
		@number_of_bikes = @number_of_bikes - quantity_taken
		# @number_of_bikes -= quantity_taken
	end

	def return_bike(quantity_returned)
		@number_of_bikes = @number_of_bikes + quantity_returned
	end


	def classify_as_broken(quantity_broken)
		true 

	end 






	


end 
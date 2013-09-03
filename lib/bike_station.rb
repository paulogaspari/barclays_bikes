require_relative 'vans'

class BikeStation

	attr_reader :number_of_bikes_available, :van, :number_of_empty_spaces, :bikes


	def initialize(van)
		@number_of_bikes_available = 20
		# this is the number of bikes that can be rented at a given station
		@number_of_bikes_broken = 0
		#  this is the number of bikes that are broken and cannot be rentes
		@number_of_empty_spaces = 0
		# this is the number of empty spaces in the bike station at a given moment

		@van = van
		# @bikes = [Bike.new, Bike.new, Bike.new('ABC1234', 'broken')]

		# This is the van that is associated with this bike station. Each station
		# has a dedicated van.
	end


	def number_of_bikes_in_bikestation
	#  This is the total number of bikes at a given station
		@number_of_bikes_available + @number_of_bikes_broken
	end


	def slots_in_bikestation
		@number_of_bikes_available + @number_of_empty_spaces + @number_of_bikes_broken
	end


	def sum_of_empty_spaces_and_bikes
		number_of_bikes_in_bikestation + number_of_empty_spaces
	end

	
	def rent_bike(quantity_taken)
		@number_of_bikes_available -= quantity_taken
		@number_of_empty_spaces += quantity_taken
		# return @bikes.last
	end

	def return_bike(quantity_returned)
		@number_of_bikes_available += quantity_returned
		@number_of_empty_spaces -= quantity_returned
	end


	def classify_as_broken
		@number_of_bikes_available = @number_of_bikes_available - 1
		@number_of_bikes_broken += 1
		true 
	end 


	def request_pickup_broken_bike
		@van.asked_for_pickup
	end

	def bike_went_to_repair
		@number_of_empty_spaces += 1
	end


 



	end


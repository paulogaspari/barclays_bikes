require_relative 'vans'

class BikeStation

	attr_reader :number_of_bikes_available, :van




	def initialize(van)
		@number_of_bikes_available = 20
		# this is the number of bikes that can be rented at a given station
		@number_of_bikes_broken = 0
		#  this is the number of bikes that are broken and cannot be rentes
		@van = van
		# This is the van that is associated with this bike station. Each station
		# has a dedicated van.
	end


	def number_of_bikes
	#  This is the total number of bikes at a given station
		@number_of_bikes_available + @number_of_bikes_broken
	end


	def verify_spaces
		20
	end


	def number_of_empty_spaces
		20 - @number_of_bikes_available - @number_of_bikes_broken
	end


	def sum_of_empty_spaces_and_bikes
		
		number_of_bikes + number_of_empty_spaces
	end

	
	def rent_bike(quantity_taken)
		@number_of_bikes_available = @number_of_bikes_available - quantity_taken
		# @number_of_bikes -= quantity_taken
	end

	def return_bike(quantity_returned)
		@number_of_bikes_available = @number_of_bikes_available + quantity_returned
	end


	def classify_as_broken
		@number_of_bikes_available = @number_of_bikes_available - 1
		@number_of_bikes_broken += 1
		true 
	end 


	def request_pickup_broken_bike
		@van.asked_for_pickup
	end

	def 



	end


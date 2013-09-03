require_relative 'bike_station'

class Users 

	attr_reader :bikes_in_use, :broken_bikes


	def initialize 

		@bikes_in_use = 0
		@broken_bikes = 0

	end

	def bike_rented(quantity, bike_station)
		bike_station.rent_bike(quantity)
		@bikes_in_use += quantity

	end 

	def break_bike(quantity)
		@broken_bikes += quantity
		# change the status of the bike to broken
	end 

	def return_broken_bike(quantity) #change name to return_bike
			@bikes_in_use -= quantity
			@broken_bikes -= quantity
	end 

	def return_good_bike(quantity)
		@bikes_in_use -= quantity
	end



end 
require_relative 'bike_station'
require_relative 'bike'


class Users 

	attr_reader :bikes_in_use


	def initialize 
		@bikes_in_use = []
	end

	def bike_rented(bike_station)
		@bikes_in_use.push(bike_station.rent_bike)
		#bike_station.rent_bike(bike_station) #add the bike object from bikestation_rentbike into the array
	end 

	def break_bike
		@bikes_in_use.last.change_bike_status('broken') #change the satus of the bike in that array to broken
	end 

	def return_bike(bike_station)
		bike_station.return_bike(@bikes_in_use.pop)
	end 


	def return_good_bike(bike_station)
		bike_station.return_bike(bike_station)
		@bikes_in_use -= quantity
	end



end



require_relative 'vans'
require_relative 'bike'

class BikeStation

	attr_reader :biciclet, :van, :number_of_slots


	def initialize(van)
		@number_of_slots = 10
		@biciclet = [Bike.new, Bike.new, Bike.new, Bike.new, Bike.new, Bike.new, Bike.new, Bike.new, Bike.new, Bike.new, ] 
		# these are the bikes that can be rented at a given station
		@van = van
		# This is the van that is associated with this bike station. Each station
		# has a dedicated van.
	end


	def number_of_bikes_in_bikestation
		@biciclet.count
		#  This is the total number of bikes at a given station
	end


	def number_of_empty_spaces
		@number_of_slots - @biciclet.count
	end


	def number_of_bikes_available #to rent
		@biciclet.reject{|bike| bike.state =='broken'}.length
	end

	
	def rent_bike
		@biciclet.pop
	end


	def return_bike(bike)
		@biciclet.push(bike)
	end


	def classify_as_broken
		@biciclet.last.change_bike_status('broken')
	end 


	def request_pickup_broken_bike
		@van.asked_for_pickup
	end

	def bike_went_to_repair
		@van.bikes_in_transit(@biciclet.select {|bike| bike.state =='broken'}.last)
		print @biciclet.select {|bike| bike.state =='broken'}
		@biciclet.delete_if {|bike| bike.state =='broken'}
		#pass this bike to inside the van.new ????
	end


 



	end


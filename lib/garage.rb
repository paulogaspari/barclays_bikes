require_relative 'bike'



class Garage

	attr_reader :bikes_to_repair, :bikes_repaired



	def initialize
		@bikes_to_repair = 0
		@bikes_repaired = 0
	end

	def add_broken_bike(quantity)
		@bikes_to_repair += quantity
	end

	def fix_yourself_bike(bike)
		bike.repair_yourself
		@bikes_to_repair -= 1
		@bikes_repaired += 1
	end






end

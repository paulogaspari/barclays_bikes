
class Bike

	attr_reader :state

	def initialize
		@state = 'new bike'
		# @reference = reference
	end

	def change_bike_status(status)
		if status == 'repaired'
			@state = 'repaired'
		else
			@state = 'broken'
		end
	end


	def repair_yourself
		@state = 'repaired'
	end







end

# ASSUMPTIONS:
# has a state where it states if its fixed or broken
# fixes itself once it is said to fix it self from the outside
# 

# if we want, we can change into maybe a simpler way giving value true or false
#  to the bike state:
# if bike.state == 'broken'

# if bike.broken?
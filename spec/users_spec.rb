require_relative '../lib/users'


describe Users do
	let(:users) { Users.new }
	
	let(:bike) {double :bike, {:change_bike_status => 'broken' , :state => 'broken'} }
	let(:bikestation) {double :bikestation, {:rent_bike => bike, :return_bike => nil} }

	it 'should have one bike in use' do
		users.bike_rented(bikestation)
		expect(users.bikes_in_use).to eq [bike]
	end

	############
	#  Doesn't work because we need to be able to give :state different values
	# ##########
	# it 'the bike rented should be repaired or new bike' do 
	# 	users.bike_rented(bikestation)
	# 	expect(users.bikes_in_use.first.state).to eq "new bike"
	# end

	it 'should return one bike' do 
		users.bike_rented(bikestation)
		users.return_bike(bikestation)
		expect(users.bikes_in_use.count).to eq (0)
	end 

	it ' should press the "its broken" button in the bike station when he breaks a bike' do
		users.bike_rented(bikestation)
		users.break_bike
		expect(users.bikes_in_use.first.state).to eq "broken"
	end


	it ' notifies the bike station when he rents a bike' do 
		expect(bikestation).to receive :rent_bike
		users.bike_rented(bikestation)
	end

	it ' notifies the bike station when he returns a bike' do 
		expect(bikestation).to receive :return_bike
		users.return_bike(bikestation)
	end





end


# 
# user can takes one bike from bike station
# user returns a bike to the bike station
# user breaks the bike and presses the broken button
# 
# 
# 

# make sure the bike station is notified when a user returns a bike or takes one

# 
# 

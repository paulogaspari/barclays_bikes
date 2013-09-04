require_relative '../lib/users'


describe Users do
	let(:users) { Users.new }
	let(:bikestation) {double :bikestation, {:rent_bike => nil, :return_bike => nil} }
	let(:bike) {double :bike, {:change_bike_status => 'broken'} }


	it 'should have one bike in use' do
		users.bike_rented
		expect(users.bikes_in_use).to satisfy {bikes_in_use.count == 1}
	end

	it 'could break one bike' do 
		users.break_bike
		expect(users.broken_bikes).to eq (1)
	end 

	it 'should return one broken bike' do 
		users.bike_rented
		users.return_broken_bike
		expect(users.bikes_in_use).to eq (0)
	end 

	# it ' should press the "its broken" button in the bike station upon return if the bike is broken' do
	# 	expect(bike).to receive :change_bike_status
	# 	expect
	# end

	it 'should return one bike undamaged' do 
		users.bike_rented(1, bikestation)
		users.return_good_bike(1, bikestation)
		expect(users.bikes_in_use).to eq (0)
	end

	it ' notifies the bike station when he rents a bike' do 
		expect(bikestation).to receive :rent_bike
		users.bike_rented(1, bikestation)
	end

	it ' notifies the bike station when he returns a bike' do 
		expect(bikestation).to receive :return_bike
		users.return_good_bike(1, bikestation)
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

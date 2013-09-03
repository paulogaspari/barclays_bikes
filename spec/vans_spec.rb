require_relative '../lib/vans' 

describe BikeStation do
	let(:van) { Van.new }


	it 'should have one bike being transported to the garage' do
		expect(van.asked_for_pickup(1)).to be_true
	end

	it 'one bike has been dropped off at the garage' do

	end 
	
	it 'should have one bike being transported to the bikestation' do 
		expect(van.returning_bike(1)).to be_true
	end 

	it 'one bike has been dropped off to the station' do
	end




end


# test if it has bikes being transported to the garage
# test if it has bukes being transported back to the station
# test that the bike has been delivered to the garage
# test that the bike has been delivered to the bike station
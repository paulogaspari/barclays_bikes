require_relative '../lib/vans' 

describe Van do
	let(:van) { Van.new }


	it 'doesnt have bikes at start' do
		expect(van.num_empty_spaces).to eq(10)
	end

	it 'should pick up one bike from bikestation, and have one broken bike being transported' do
		van.asked_for_pickup(1)
		expect(van.num_bikes_to_repair).to eq (1)
		expect(van.num_empty_spaces).to eq(9)
	end

	it 'should drop one bike at bikestation, and have one more empty space and one less repaired bike' do 
		van.asked_for_pickup(1)
		van.returning_bike(1)
		expect(van.num_empty_spaces).to eq(10)
		expect(van.num_bikes_repaired).to eq (0)
	end 

	it 'should drop bike at garage and have one more empty space and one less broken bike' do
		van.asked_for_pickup(1)
		van.returning_bike(1)
		expect(van.num_empty_spaces).to eq(10)
		expect(van.num_bikes_to_repair).to eq (0)
	end 
	






	# context 'when picking up  bikes from bikestation and then returning them, the BIKESTATION:' do

	# 	it 'should have one more empty space when picking up a bike and one less broken bike' do
	# 	end

	# 	it ' should have one less empty space and 1 more available bike to rent when a bike is delivered' do
	# 	end


	# end


	# context 'when delivering and picking up bikes from the garage, the GARAGE:' do

	# 	it 'should have one more bike to repair in stock when bike is delivered' do
	# 	end

	# 	it 'should have one less bike repaired in stock when a bike is being picked up' do
	# 	end

	# end



end

require_relative '../lib/garage'


describe Bike do
	let(:garage) { Garage.new }
	let(:bike) { double(:bike) }

	it 'Should receive one bike from the van and increase its number of bikes to repair by one' do
		garage.add_broken_bike(1)
		expect(garage.bikes_to_repair).to eq (1)
	end

	it 'Should ask the bike to repair itself' do
		expect(bike).to receive :repair_yourself
		garage.fix_yourself_bike(bike)
		# expect(garage.bikes_repaired).to eq(1)
	end

	it 'increases the number of repaired bikes by 1' do
		allow(bike).to receive :repair_yourself
		garage.fix_yourself_bike(bike)

		expect(garage.bikes_repaired).to eq(1)
	end

	it 'decreases the number of  bikes to be repaired by 1' do
		garage.add_broken_bike(1)
		allow(bike).to receive :repair_yourself
		garage.fix_yourself_bike(bike)

		expect(garage.bikes_to_repair).to eq(0)
	end
# has to receive the bikes from the van
# once received has to decrease the number of bikes in the van

# has to put bikes into the van
# once it does that, it has to add a repaired bike to the van


end

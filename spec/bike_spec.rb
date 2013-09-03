require_relative '../lib/bike'


describe Bike do
	let(:bike) { Bike.new }


	it 'should be a new bike at start' do
		expect(bike.state).to eq 'new bike'
	end	

	it 'should be broken if it is classified in the bike station as broken' do
		bike.change_bike_status('broken')
		expect(bike.state).to eq ('broken')
	end

	it 'should be able to fix itself automatically if ordered to do so from the garage' do
		bike.repair_yourself
		expect(bike.state).to eq ('repaired')
	end




end 

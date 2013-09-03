require_relative '../lib/bike'


describe Bike do
	let(:bike) { Bike.new }


	it 'should be repaired' do
		expect(bike.state).to eq 'repaired'
	end	


end 

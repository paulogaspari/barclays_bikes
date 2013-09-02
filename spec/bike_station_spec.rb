require_relative '../lib/bike_station' 

describe BikeStation do
	let(:bikestation) { BikeStation.new}


	it 'should have 20 bike spaces' do
		expect(bikestation.verify_spaces).to eq (20)
	end

	it 'bikes plus empty spaces should equal 20' do 
		expect(bikestation.sum_of_empty_spaces_and_bikes).to eq (20)
	end


	it 'has 20 bikes' do 
		expect(bikestation.number_of_bikes).to eq (20)
	end


	context 'someone rents one bike and after someone returns another' do

		it 'should have 19 bikes available' do	
			bikestation.rent_bike(1)
			expect(bikestation.number_of_bikes).to eq (19)
		end

		it 'should have one empty space' do 
			bikestation.rent_bike(1)

			expect(bikestation.number_of_empty_spaces).to eq (1)
		end

		it 'should have no empty spaces after someone returns a bike' do
			bikestation.rent_bike(1)
			bikestation.return_bike(1)
			expect(bikestation.number_of_empty_spaces).to eq (0)
			expect(bikestation.number_of_bikes).to eq (20)
		end
	end 


	context ' a bike gets returned broken'

	it 'should classify the bike as broken when the user presses the broken button' do
		# bikestation.user_presses_broken_button(1)
		expect(bikestation.classify_as_broken(1)).to be_true
	end

	it 'should decrease the number of available bikes, without increasing the number of empty spaces' do
        
	end

	it 'should contact the van to pick up the bike' do
         
	end


	context ' a broken bike gets picked up by the van' do
	end




end



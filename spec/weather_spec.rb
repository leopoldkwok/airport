# require 'weather'

# class Weather; include Weather end

# describe Weather do

#  	it "should know what the weather is" do
#  		check_weather = Weather.new
#  		expect(["sunny", "stormy"]).to include(check_weather.weather)
#  	end
#  end

require './lib/weather.rb'

 shared_examples 'weather conditions' do 
  let(:weather) {described_class.new}

    it 'can be stormy' do
      allow(weather).to receive(:rand).and_return(5)
      expect(weather).to be_stormy
    end

    it 'can be sunny' do
      allow(weather).to receive(:rand).and_return(0..4)
      expect(weather).not_to be_stormy 
    end
  end
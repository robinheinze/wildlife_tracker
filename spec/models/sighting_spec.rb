require 'spec_helper'

describe Sighting do
  it { should validate_presence_of :date }
  it { should validate_presence_of :time }
  it { should validate_presence_of :location }
  it { should belong_to :species }
  it { should belong_to :region }

  describe '.between' do
    it 'returns an array of sightings that occur between the dates given' do
      start_date = '2013-01-01'
      end_date = '2014-01-01'
      new_sighting1 = Sighting.create(:date => '2014-04-01', :time => '03:30:00', :location => 'here', :species_id => 1)
      new_sighting2 = Sighting.create(:date => '2013-04-01', :time => '03:30:00', :location => 'here', :species_id => 1)
      Sighting.between({:start_date => start_date, :end_date => end_date}).should eq [new_sighting2]
    end
  end
end

class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :time, :presence => true
  validates :location, :presence => true
  belongs_to :species

  def self.between(dates)
    sightings = Sighting.where(:date => dates['start_date']..dates['end_date'])
  end
end

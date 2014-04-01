class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :time, :presence => true
  validates :location, :presence => true
  belongs_to :species
end

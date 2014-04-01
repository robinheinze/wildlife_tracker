class Sighting < ActiveRecord::Base
  validates :date_time, :presence => true
  belongs_to :species
end

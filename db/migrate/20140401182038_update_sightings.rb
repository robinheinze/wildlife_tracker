class UpdateSightings < ActiveRecord::Migration
  def change
    remove_column :sightings, :date_time
    add_column :sightings, :date, :date
    add_column :sightings, :time, :time
  end
end

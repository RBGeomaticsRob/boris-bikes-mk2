require 'capybara/rspec'
require 'docking_station'

feature 'A member of the public can release a bike from the docking station' do
  scenario 'Bike that is working should be released' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
end

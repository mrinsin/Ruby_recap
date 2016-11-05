require 'rspec'
require_relative "car"

#Story: As a programmer, I can make a vehicle.
#Hint: Test that Vehicle.new does not raise any errors.
describe Vehicle do

  it "should be a thing" do
    my_vehicle = Vehicle.new(1993)
    expect{my_vehicle}.to_not raise_error
  end

  #As a programmer, I can tell which model year a vehicle is from. Model years never change.
  it "should have a model year" do
    my_vehicle = Vehicle.new(1993)
    expect(my_vehicle.model_year).to be_a Integer
  end

  #Story: As a programmer, I can turn on and off the lights on a given Vehicle.
  it "should have lights off" do
    my_vehicle = Vehicle.new(1993)
    expect(my_vehicle.lights_on?).to eq false
  end

  #Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
  it "can have its lights manipulated" do
    my_vehicle = Vehicle.new(1993)
    expect{my_vehicle.change_lights}.to_not raise_error

    my_vehicle.change_lights
    expect(my_vehicle.lights_on?).to eq true
  end

end

# As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.

describe Car do

  it "should exist" do
    my_car = Car.new(1993)
    expect{my_car}.to_not raise_error
  end

    #Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
    it "should have a starting speed of 0" do
      my_car = Car.new(1993)
      expect(my_car.speed).to eq "0 Km/h"
    end


  #Story: As a programmer, I can tell how many wheels a car has; default is four.

  it "should have 4 wheels by default" do
    my_car = Car.new(1993)
    expect{my_car.wheels}.to_not raise_error
    expect(my_car.wheels).to eq 4
  end

  #Story: As a programmer, I can honk the horn.

  it "should go BEEP when honked" do
    my_car = Car.new(1993)
    expect{my_car}.to_not raise_error

    expect(my_car.horn).to eq "BEEP!"
  end

end

#Story: As a programmer, I can make a Toyota car.

describe Toyota do

  it "should be a car" do
    new_car = Toyota.new(1993)
    expect{new_car}.to_not raise_error
  end

  #Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
  it "should whoop when honked" do
    new_car = Toyota.new(1993)
    expect{new_car}.to_not raise_error

    expect(new_car.horn).to eq "whoop"
  end

end


#Story: As a programmer, I can make a Tata car.
describe Tata do

  it "should be a thing" do
    new_car = Tata.new(1993)
    expect{new_car}.to_not raise_error
  end

  #Story: As a programmer, I can honk the horn of a Tata car - "beep".
  it "should go beep when honked" do
    new_car = Tata.new(1993)
    expect{new_car}.to_not raise_error

    expect(new_car.horn).to eq "beep"
  end

  #Story: As a programmer, I can speed my Tatas up by 2 km/h per acceleration.
  it "can be accelerated by 2 Km/h in one go" do
    new_car = Tata.new(1993)
    new_car.accelerate
    expect(new_car.speed).to eq "2 Km/h"
  end

  #Story: As a programmer, I can slow my Tatas down by 1.25 km/h per braking.
  it "can be decelerated by 7 Km/h in one go" do
    new_car = Tata.new(1993)
    new_car.accelerate
    new_car.decelerate
    expect(new_car.speed).to eq "0.75 Km/h"
  end

end


#Story: As a programmer, I can make a Tesla car.
describe Tesla do

  it "should be a thing" do
    new_car = Tesla.new(1993)
    expect{new_car}.to_not raise_error
  end

  #Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
  it "should go \"Beep-bee-bee-boop-bee-doo-weep\" when honked" do
    new_car = Tesla.new(1993)
    expect{new_car}.to_not raise_error

    expect(new_car.horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end

  #Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
  it "can be accelerated by 10 Km/h in one go" do
    new_car = Tesla.new(1993)
    new_car.accelerate
    expect(new_car.speed).to eq "10 Km/h"
  end

  # Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.
  it "can be decelerated by 7 Km/h in one go" do
    new_car = Tesla.new(1993)
    new_car.accelerate
    new_car.decelerate
    expect(new_car.speed).to eq "3 Km/h"
  end

end

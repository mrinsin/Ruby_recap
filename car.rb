class Vehicle

  def initialize(model_year)
    @model_year = model_year
    @lights = false
  end

  def model_year
    @model_year
  end

  def lights_on?
    @lights
  end

  def change_lights
    if @lights == true
      @lights = false
    end

    if @lights == false
      @lights = true
    end
  end

end



class Car < Vehicle

  def initialize(model_year)
    super
    @wheels = 4
    @speed = 00
  end

  def wheels
    @wheels
  end

  def horn
    "BEEP!"
  end

  def speed
    "#{@speed} Km/h"
  end

end


class Toyota < Car

  def initialize(model_year)
    super
  end

  def horn
    "whoop"
  end

  def accelerate
    @speed = @speed.to_i + 7
  end

  def decelerate
    @speed = @speed.to_i - 5
  end

end


class Tata < Car

  def initialize(model_year)
    super
  end

  def horn
    "beep"
  end

  def accelerate
    @speed = @speed.to_i + 2
  end

  def decelerate
    @speed = @speed.to_i - 1.25
  end

end

class Tesla < Car

  def initialize(model_year)
    super
  end

  def horn
    "Beep-bee-bee-boop-bee-doo-weep"
  end

  def accelerate
    @speed = @speed.to_i + 10
  end

  def decelerate
    @speed = @speed.to_i - 7
  end

end

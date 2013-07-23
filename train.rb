class Train
  # Instantiate a new Train object.
  #
  # model - The String model of the train.
  # speed - The Integer speed of the train, in MPH.
  #
  # Returns a new Train.
  def initialize(model, speed)
    @model = model
    @speed = speed
  end

  def trip_duration(distance)
    distance / @speed
  end

  def trip_distance(duration)
    @speed*duration
  end

  def power_source
    if @model.include?('-A')
      'steam'
    else
      'diesel'
    end
  end
end
class Train
  attr_reader :number, :type, :cars, :speed, :route, :station

  def initialize(number, type, cars)
    @number = number
    @type = type
    @cars = cars
    @speed = 0
  end

  def speed_up(speed_change)
    @speed += speed_change if speed_change > 0
  end

  def speed_down(speed_change)
    @speed -= speed_change if speed_change > 0 && speed >= speed_change
  end

  def stop
    @speed = 0
  end

  def attach_car
    @cars += 1 if speed.zero?
  end

  def detach_car
    @cars -= 1 if speed.zero? && cars > 0
  end

  def assign_route(route)
    @route = route
    @station = @route.first_station
    @station.arrive(self)
  end

  def goto_next_station
    if station
      @station.depart(self)
      @station = next_station
      @station.arrive(self)
    end
  end

  def goto_prev_station
    if station
      @station.depart(self)
      @station = prev_station
      @station.arrive(self)
    end
  end

  def prev_station
    @route.stations[@route.stations.find_index(@station) - 1] if route == true
  end

  def next_station
    @route.stations[@route.stations.find_index(@station) + 1] if route == true
  end
end

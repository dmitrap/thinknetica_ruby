class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train)
    @trains << train
  end

  def depart(train)
    @trains.delete(train)
  end

  def trains_by_type
    trains_type = Hash.new(0)
    trains.each { |train| trains_type[train.type] += 1 }
    trains_type
  end
end

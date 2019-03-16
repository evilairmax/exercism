class Clock
  MINUTES_PER_HOUR = 60
  HOURS_PER_DAY = 24

  def initialize(hours, mins)
    @minutes = (hours * MINUTES_PER_HOUR) + mins
  end

  def self.at(hours, mins)
    new(hours, mins)
  end

  def to_s
    hours = (@minutes / MINUTES_PER_HOUR) % HOURS_PER_DAY
    mins = @minutes % MINUTES_PER_HOUR
    format('%02i:%02i', hours, mins)
  end

  def +(other)
    Clock.new(0, @minutes + other)
  end

  def ==(other)
    to_s == other.to_s
  end
end
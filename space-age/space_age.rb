class SpaceAge

  planets = {
      :earth => 1.0,
      :mercury => 0.2408467,
      :venus => 0.61519726,
      :mars => 1.8808158,
      :jupiter => 11.862615,
      :saturn => 29.447498,
      :uranus => 84.016846,
      :neptune => 164.79132
  }

  def initialize(seconds)
    @seconds = seconds
  end

  planets.each {|name, value| define_method("on_#{name}") { @seconds / (31_557_600 * value) } }
end
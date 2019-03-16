class Robot

  @@AVAILABLE = ('AA000'..'ZZ999').to_a.shuffle.each

  attr_reader :name

  def initialize
    @name = @@AVAILABLE.sample
  end

  def reset
    @name = @@AVAILABLE.sample
  end

  def self.forget
    @@AVAILABLE.to_a.shuffle.each
  end
end
class Patient
  attr_reader :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
end

class Doctor
  attr_accessor :name, :patient

  @@all = []

  def initialize(name)
    @name = name
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end
end

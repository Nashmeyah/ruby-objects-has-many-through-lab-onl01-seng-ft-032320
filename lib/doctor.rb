class Doctor
  attr_accessor :name, :patient

  @@all = []

  def initialize(name, patient)
    @name = name
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end
end

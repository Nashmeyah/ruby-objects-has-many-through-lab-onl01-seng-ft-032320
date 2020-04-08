class Doctor
  attr_accessor :name, :patient

  @@all = []

  def initialize(name, patient)
    @name = name
    @patient = patient
    @@all << self
  end
end

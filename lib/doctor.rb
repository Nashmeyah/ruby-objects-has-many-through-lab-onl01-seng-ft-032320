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

  def new_appointment(name)
    name = Patient.new(name, date)
    name.doctor = self
  end
end

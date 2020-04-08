class Appointment
  attr_reader :doctor, :patients, :date

  @@all = []

  def initialize(date, patients, doctor)
    @date = date
    @patients = patients
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end

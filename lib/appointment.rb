class Appointment
  attr_reader :doctor, :patients, :date

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patients = patients
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end

class Doctor
  attr_reader :name, :patient

  @@all = []

  def initialize(name)
    @name = name
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, date)
    name = Patient.new(name, date)
    name.doctor = self
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end
end

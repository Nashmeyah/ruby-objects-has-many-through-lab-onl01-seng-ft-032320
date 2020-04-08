class Doctor
  attr_accessor :doctor, :patient, :date, :name

  @@all = []

  def initialize(name)
    @name = name
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    appointments.map {|appt| appt.patient}
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

end

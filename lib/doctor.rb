class Doctor
  attr_accessor :doctor, :patients, :date

  @@all = []

  def initialize(name)
    @name = name
    @patients = patients
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    appointments.map {|appt| appt.patients}
  end

  def new_appointment(date, patients)
    Appointment.new(date, self, patients)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

end

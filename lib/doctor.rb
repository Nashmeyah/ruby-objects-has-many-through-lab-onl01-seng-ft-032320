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

  def patients
    appointments.map {|appt| appt.patients}
  end

  def new_appointment(date, name)
    Appointment.new(name, self, date)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

end

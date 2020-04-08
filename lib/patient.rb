class Patient
  attr_accessor :name, :doctor, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appt| appt.patients == self}
  end

  def new_appointment (doctor, date)
    Appointment.new(doctor, self, date)
  end
end

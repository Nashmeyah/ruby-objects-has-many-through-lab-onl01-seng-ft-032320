class Patient
  attr_accessor :name, :doctor, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end
end

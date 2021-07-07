class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

  def new_appointment(patient, date)
    new_aptmt = Appointment.new(date, patient, self)
    self.appointments << new_aptmt
    new_aptmt
  end

  def patients
    self.appointments.collect {|aptmt| aptmt.patient}
  end
end

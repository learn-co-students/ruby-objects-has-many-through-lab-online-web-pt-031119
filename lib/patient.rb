class Patient
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

  def new_appointment(doctor, date)
    new_aptmt = Appointment.new(date, self, doctor)
    self.appointments << new_aptmt
    new_aptmt
  end

  def doctors
    self.appointments.collect {|aptmt| aptmt.doctor}
  end
end

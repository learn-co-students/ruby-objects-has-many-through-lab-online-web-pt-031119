class Patient
  attr_accessor :name, :date
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select do |x|
      x.patient == self
    end
  end

  def doctors
    Appointment.all.map do |x|
      x.doctor
    end
  end

end

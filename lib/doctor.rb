class Doctor
  attr_accessor :name, :date
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select do |x|
      x.doctor == self
    end
  end

  def patients
    Appointment.all.map do |x|
      x.patient
    end
  end

end

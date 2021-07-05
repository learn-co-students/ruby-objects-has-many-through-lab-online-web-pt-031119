class Patient
  @@names = []
  attr_reader :name, :appointment, :doctor

  def initialize(name)
    @name = name
    @@names << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
  def self.all
    @@names
  end
end

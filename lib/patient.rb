class Patient 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date)
    appt = Appointment.new(self, date, doctor)
    appt
  end 
  
  def appointments 
    Appointment.all.select {|appt| appt.patient == self}
  end 
  
  def doctors
    self.appointments.collect {|patients| patients.doctor}
  end 
  
end 
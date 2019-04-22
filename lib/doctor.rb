class Doctor
  @@all = []
  
  attr_accessor :name 
  
  def initialize (name)
    @name = name 
    @@all << self
  end 
  
  def new_appointment (patient, date)
    Appointment.new(patient, self, date)
  end 
  
  def 
    Appointments.all.select { |i| i.Doctor == self}
  end 
  
  def patients
    appointments.collect (&:patient)
  end 
    
  end 
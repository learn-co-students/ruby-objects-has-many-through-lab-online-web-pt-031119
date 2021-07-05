class Patient 
  @@all = []
  
  attr_accessor :name 
  
 def  initialize (name)
  @name = name 
  @@all << self 
  end 

  def new_appointment (doctor, date)
  Appointment.new = (doctor, self, date)
  end 

  def appointments
  Appointment.all.select { |i| i.patient == self}
  end 

  def doctors
  appointment.map (&:doctor)
  end 
  
end 
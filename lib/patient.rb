class Patient 
attr_accessor 
@@all = []

def self.all 
  @@all 
  end     #def 

def initialized(name)
  @name = name 
  @@all << self 
  end     #def 

def new_appointment(doctor, date)
  Appointment.new(doctor, self, date)
  end     #def 

def appointments 
  Appointment.all.select {|day| day.name == self}
end 
end     #def 

  def doctors
    appointments.map(&:doctor)
  end


end 
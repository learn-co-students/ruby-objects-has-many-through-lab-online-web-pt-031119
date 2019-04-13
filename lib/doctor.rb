class Doctor
@@all = []

attr_reader :name  

  def initialize(name)
    @name = name
    @@all << self
  end
  
def self.all
  @@all
end
  
def new_appointment(patient,date)
  #binding.pry
  Appointment.new(self,patient,date)
end

def appointments
 Appointment.all.select  do |appointment|
   appointment.doctor == self
   end
 end

def patients
  appointments.map do |appointment|
   appointment.patient
  end
end
 
 
  
  
end

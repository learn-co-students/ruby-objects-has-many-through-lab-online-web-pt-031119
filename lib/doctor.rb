require 'pry'
class Doctor
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  # date, patient, doctor <-- arguments order
  
  def new_appointment(date, patient)
    appt = Appointment.new(date, patient, self)
    appt 
  end 
  
  def appointments 
    Appointment.all.select {|appt| appt.doctor == self}
  end 
  
  def patients 
    self.appointments.collect do |appt| 
      # binding.pry
      appt.patient
    end 
  end 
  
end 
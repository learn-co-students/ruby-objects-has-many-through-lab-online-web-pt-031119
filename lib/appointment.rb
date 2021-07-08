class Appointment
  attr_accessor :date, :doctor, :patient 
  @@all = []
  
  def self.all 
    @@all 
  end     #def 
  
  def initialize(date, patient, doctor) 
    @date = date 
    @patient = patient 
    @doctor = doctor 
    @@all << self 
  end     #def 
  
end 
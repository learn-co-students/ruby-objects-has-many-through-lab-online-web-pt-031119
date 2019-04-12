class Appointment 

    attr_accessor :date, :patient, :doctor 

    @@all = []

    def initialize(date, patient, doctor)
        @@all << self
        @date = date 
        @patient = patient 
        @doctor = doctor 
        doctor.appointments << self
        patient.appointments << self 
    end
    
    def self.all
        @@all 
    end 

end 
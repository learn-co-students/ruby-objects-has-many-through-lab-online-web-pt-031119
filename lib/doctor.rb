class Doctor 

    attr_accessor :name, :appointments 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @appointments =[] 
    end 

    def self.all 
        @@all 
    end
    
    def new_appointment(patient, date)
        new_appointment = Appointment.new(date, patient, self)
        new_appointment 
    end
    
    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end
    
    def patients
        self.appointments.collect {|appointments| appointments.patient}
    end 


end 